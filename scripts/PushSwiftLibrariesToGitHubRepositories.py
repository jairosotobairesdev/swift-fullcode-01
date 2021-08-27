import io
import sys
import os

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
def search_package_folders(root_folder,github_pat):
    print(root_folder)
    swift_libraries = {} 
    for dirpath, dirnames, filenames in os.walk(root_folder):      
        for name in filenames:
            if name == "Package.swift":
                swift_library_name = get_library_name(dirpath + "/" + name)
                swift_libraries[swift_library_name] = dirpath
    return(swift_libraries)
    
# Function for publish folder into github repo
def push_package(package_folder,github_repo,github_pat):
    return("push_package")

# Main body execution

# swift_library_paths = search_package_folders("/Users/Jairo.Soto/Documents/code/swift-fullcode-01","u5wrjfkjderotfjwerjfiwe")

swift_library_paths = search_package_folders(sys.argv[1],sys.argv[2])

for library in swift_library_paths: 
    print("Library: " + library)
    print("Library Path: " + swift_library_paths[library])





