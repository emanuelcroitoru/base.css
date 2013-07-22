grunt
mv build build.new
git checkout gh-pages
[ $? -ne 0 ] && echo "Stopping here." && exit 1

rm -Rf build
mv build.new build
git commit -a -m "Updated build."
git push -f origin gh-pages
git checkout master
