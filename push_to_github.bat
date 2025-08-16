@echo off
echo Setting up GitHub remote with access token...
git remote remove origin
git remote add origin https://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@github.com/Administrator/yamaha-r1-parallax.git

echo Pushing to GitHub...
git push -u origin master

echo Done!
pause
