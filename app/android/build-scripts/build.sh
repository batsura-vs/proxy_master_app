git clone "https://$GITHUB_TOKEN@github.com/batsura-vs/proxy_master"
cd proxy_master || exit 1
#flutter build apk --release
#mv ./build/app/outputs/flutter-apk/app-release.apk ./release.apk
cd ..
./app/android/build-scripts/version "$MESSAGE"

git remote set-url origin https://x-access-token:"$GITHUB_TOKEN"@github.com/batsura-vs/proxy_master_app
git config --global user.email "batsura.vs@gmail.com"
git config --global user.name "auto"
#git add ./app/android/release.apk
git add ./app/android/version.json
#git commit ./app/android/release.apk
git commit ./app/android/version.json
git push