# This one question to practice GIT would suffice

#Step-by-step following the instructions of the question
mkdir myrepo
cd myrepo
git init
git clone  https://gitlab.com/Priyansh_Shrivastava/training-projects.git
touch index.html
git add index.html 
git commit -m "Add index.html"
git branch feature/new-feature
git checkout feature/new-feature
git branch
git checkout master
git fetch training-projects
git merge feature/new-feature
git push master
git log
