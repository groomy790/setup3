#!/bin/bash
# A script for archieve dropbox's folder with tar.gz

unzip school.zip
unzip document.zip
unzip blog.zip
unzip archive.zip

date=$(date +%Y%m%d)
dirname="dropbox-${date}"
mkdir $dirname

mv school $dirname/school
mv document $dirname/document
mv blog $dirname/blog
mv archive $dirname/archive

tar -zcvf "${dirname}.tar.gz" $dirname

rm -rf $dirname
