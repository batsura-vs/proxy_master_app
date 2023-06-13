git clone "https://$GITHUB_TOKEN@github.com/batsura-vs/proxy_master"
cd proxy_master || exit 1
#flutter build apk --release
#mv ./build/app/outputs/flutter-apk/app-release.apk ./release.apk
cd ../app/android || exit 1
rm -rf ../../proxy_master
git status
git rebase --continue
./build-scripts/version "$MESSAGE"
cat version.json
git config --global user.email "batsura.vs@gmail.com"
git config --global user.name "auto"
#git add ./release.apk
git add ./version.json
#git commit ./release.apk
git commit ./version.json
git push
