git init
git remote add origin https://github.com/baodev01/stsGroup.git
git pull
git branch branch20180425
git checkout branch20180425
git branch --set-upstream-to=origin/branch20180425
git pull
git ls-files --others --exclude-from=.git/info/exclude *.bat
git config core.autocrlf true