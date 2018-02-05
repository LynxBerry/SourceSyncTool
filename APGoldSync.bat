pushd d:\src\apgold
set inetroot=d:\src\apgold
set corextbranch=apgold
call d:\src\apgold\tools\path1st\myenv.cmd

echo start sd sync

call sd sync

echo end sd sync

popd