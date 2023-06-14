git clone "https://$GITHUB_TOKEN@github.com/batsura-vs/proxy_master"
cd proxy_master || exit 1
flutter build apk --release
mv ./build/app/outputs/flutter-apk/app-release.apk ../app/android/release.apk
cd ..
rm -rf proxy_master
./app/android/build-scripts/version "$MESSAGE"
mv ./version.json ./app/android/version.json
git config --global user.email "batsura.vs@gmail.com"
git config --global user.name "auto"
git add -A
git commit -m "$(date +'%H:%M (%d-%m-%y)')"
git push
