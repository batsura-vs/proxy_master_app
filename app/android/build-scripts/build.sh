git clone "https://$GITHUB_TOKEN@github.com/batsura-vs/proxy_master"
cd proxy_master || exit 1
#flutter build apk --release
#mv ./build/app/outputs/flutter-apk/app-release.apk ./release.apk
cd ..
rm -rf proxy_master
./app/android/build-scripts/version "$MESSAGE"
git config --global user.email "batsura.vs@gmail.com"
git config --global user.name "auto"
#git add ./app/android/release.apk
git add ./app/android/version.json
#git commit -m "$(date +'%H:%M (%d-%m-%y)')"  ./app/android/release.apk
git commit -m "$(date +'%H:%M (%d-%m-%y)')"  ./app/android/version.json
git push
