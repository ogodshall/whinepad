# clean up last version
rm -rf __deployme
mkdir __deployme

# build

sh scripts/build.sh

# minify js
uglify -s bundle.js -o __deployme/bundle.js
# minify css
cssshrink bundle.css > __deploymee/bundle.css
# copy html and images
cp index.html __deploymee/index.html
cp -r images/ __deployme/images/

# done
date; echo;