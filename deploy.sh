set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/zzsh0970927/myResume.git master:gh-pages


cd -