# Database Challenges

This repository holds the Database and Active Record pair programming challenges for the Charlie 2021 cohort.

- Anything wrapped in `< >` is an indication that this will be named uniquely, the `< >` are NOT actually added to the command
- `$` is an indication of a command line prompt, the `$` is not included
- Anything in `( )` is informational and not included in the command
- The term `local/locally` means on your personal computer


### Naming Conventions
- The name of the repository should NOT be included in the name of the project.
- Branch name: `topic-initial1-initial2` (ex. migrations-a-s)
- Project name: `topic-student1-student2.rb` (ex. migrations-austin-sarah)


### Informational Commands
Use this informational command to tell you what files have been modified and what phase of the git process you are on:  
- $ `git status`  
Use this informational command to see what branch you are currently on:  
- $ `git branch`


### Do you need the repo locally?
Use this command if you don't have the repository (folder) on your local machine:   
- $ `git clone <repo-url> (pasted from clipboard on GitHub)`


### Need a branch that doesn't exist anywhere?
Use this command if you need to create a branch that does not currently exist:  
- $ `git checkout -b <topic-initial1-initial2>` (ex. migrations-a-s)


### Need a branch that is on GitHub but not on your local?
Use these commands if the repo you are working on has a branch but it is NOT on your local machine:  
- $ `git fetch`
- $ `git checkout <branch-name>`


### Need to move to an existing branch?
Use this command to move to a branch that exist on your local machine:  
- $ `git checkout <branch-name>`  


### Not sure what branch you are on?
Use this informational command to see what branches exist on your local machine:  
- $ `git branch`


### Need code from GitHub pushed by someone else?
Use these commands if you DO have the repository on your local machine but DON'T have the latest version of the code from GitHub:
- $ `git branch` (make sure you are on the correct branch)
- $ `git pull origin <branch-name>`


### Have code locally that needs to go to GitHub?
Use these commands to add the code you have on your local machine to GitHub:
- $ `ls` (make sure you are in the correct directory)
- $ `git status` (informational command, ensure you are on the correct branch and in the correct directory)
- $ `git add .`
- $ `git commit -m "meaningful message here"`
- $ `git push origin <branch-name>`
