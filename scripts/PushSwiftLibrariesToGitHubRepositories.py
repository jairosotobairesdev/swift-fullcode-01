import io
import sys
import os
import git
from distutils.dir_util import copy_tree
from git import Repo
import shutil

# Function that returns the swift libraru name
def get_library_name(swift_library_manifest_path):
    library_name = ""
    library_file_content = open(swift_library_manifest_path,"r")
    for line in library_file_content:
        if line.find("name:") != -1:
            library_name = line.split(":")[1].split(",")[0].replace("\"","").replace(" ","")
            break
    return(library_name)

# Function for search for packages folders and return a list of the folder
def search_package_folders(root_folder):
    print(root_folder)
    swift_libraries = {} 
    for dirpath, dirnames, filenames in os.walk(root_folder):      
        for name in filenames:
            if name == "Package.swift":
                swift_library_name = get_library_name(dirpath + "/" + name)
                swift_libraries[swift_library_name] = dirpath
    return(swift_libraries)
    
# Function for publish folder into github repo
def push_package(package_path,url_library_repo,github_pat,library_repo_path, library_version):
    shutil.rmtree(library_repo_path,True)    
    repo = Repo.clone_from(url_library_repo,library_repo_path)
    copy_tree(package_path,library_repo_path,False,1)
    os.system("cd " + library_repo_path + ";git add . " + ";git commit -m \"" + library_version + "\"" + ";git tag " + library_version + ";git push")
    shutil.rmtree(library_repo_path,True)

    return("Repo updated: " + library_repo_path)

# Main body execution

#root_folder = sys.argv[1]
#github_pat = sys.argv[2]

root_folder = "/Users/Jairo.Soto/Documents/code/swift-fullcode-01"
github_pat = "u5wrjfkjderotfjwerjfiwe"
url_repo_part = "https://github.com/jairosotobairesdev/"
path_repo_part = "/Users/Jairo.Soto/Documents/code"
library_version = "1.0.2-rc1"

swift_library_paths = search_package_folders(root_folder)

print(swift_library_paths)

for library in swift_library_paths: 
    url_library_repo = url_repo_part + "/" + library + ".git"
    path_library_repo = path_repo_part + "/" + library
    result = push_package(swift_library_paths[library],url_library_repo,github_pat,path_library_repo,library_version)
    print(result)






