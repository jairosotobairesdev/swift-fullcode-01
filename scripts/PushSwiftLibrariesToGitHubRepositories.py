import io
import sys

def search_package_folders(root_folder,github_pat):
    print("Folder: " + root_folder + ",GitHub PAT: " + github_pat)

search_package_folders(sys.argv[1],sys.argv[2])
