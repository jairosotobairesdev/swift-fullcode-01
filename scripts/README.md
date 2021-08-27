# scripts/PushSwiftLibrariesToGitHubRepositories.py

Python script that pushes Swift libraries folders into GitHub repositories
Add Tags in semver format

## Pre-requeisites

- Python3
- GitPython
- pip

## Install pip on Mac

`curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`

`python3 get-pip.py`

## Install GitPython on Mac

`pip install GitPython`

## How to invoque from shell

**root_folder** "/Users/Jairo.Soto/Documents/code/swift-fullcode-01"
**github_pat** "u5wrjfkjderotfjwerjfiwe"
**url_repo_part** = "https://github.com/jairosotobairesdev/"
**path_repo_part** "/Users/Jairo.Soto/Documents/code"
**library_version** = "1.0.9-rc1"

python PushSwiftLibrariesToGitHubRepositories.py [root_folder] [github_pat] [url_repo_part] [path_repo_part] [library_version]

`python3 PushSwiftLibrariesToGitHubRepositories.py /Users/Jairo.Soto/Documents/code/swift-fullcode-01 u5wrjfkjderotfjwerjfiwe https://github.com/jairosotobairesdev/ /Users/Jairo.Soto/Documents/code 1.0.9-rc1` 