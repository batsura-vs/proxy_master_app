git clone "https://$GITHUB_TOKEN@github.com/batsura-vs/proxy_master"
cd proxy_master || exit 1
flutter build apk
mv ./build/app/outputs/flutter-apk/app-release.apk ../app/android/release.apk
cd ..
./app/android/build-scripts/version "$MESSAGE" ./proxy_master/pubspec.yaml
mv ./proxy_master/CHANGELOG.md ./app/description.md
rm -rf proxy_master
mv ./version.json ./app/version.json
git config --global user.email "batsura.vs@gmail.com"
git config --global user.name "auto"
git add -A
git commit -m "$(date +'%H:%M (%d-%m-%y)')"
git push
