cd git/se331.git
git archive master | tar -x -C ~/temp
cp -r ~/temp/public_html/* ~/public_html
chmod -R a+r ~/public_html/
find ~/public_html -type d -exec chmod a+x '{}' \;
