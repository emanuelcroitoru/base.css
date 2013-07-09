grunt
mv build build.new
git checkout gh-pages
rm -Rf build
mv build.new build
git commit -a -m "Updated build."
git push
git checkout master
