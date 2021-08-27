import io
from typing import IO
import git
from git import Repo
import shutil
import distutils
import os
from distutils.dir_util import copy_tree


# git.Git("/Users/Jairo.Soto/Documents/code").clone("https://github.com/jairosotobairesdev/swift-lib-01.git")
repo_url = "https://github.com/jairosotobairesdev/swift-lib-01.git"
repo_folder = "/Users/Jairo.Soto/Documents/code/swift-lib-01"
origen_folder = "/Users/Jairo.Soto/Documents/code/swift-fullcode-01/swift-app-01/swift-app-01/Packages/swift-lib-01"
# Delete the repository directory
shutil.rmtree(repo_folder,True)
# Colar el repo desde git hub
repo = Repo.clone_from(repo_url,repo_folder)
# Copy the contens
copy_tree(origen_folder,repo_folder,False,1)
os.system("cd " + repo_folder + ";git add . " + ";git commit -m \"Commit 03\"" + ";git push")
#os.system("git add . ")
# Commit All
#repo.index.commit("Test Commit 01")
#repo.git.execute(["git add ."])
#repo.git.execute.execute(["git","add","."])
#repo.git.execute.execute(["git","commit","-m","Test 02"])
#repo.git.execute.execute(["git","push","origin/main"])



# Delete the repo directory
shutil.rmtree(repo_folder,True)

#distutils.dir_util.copy_tree(origen_folder,repo_folder)

