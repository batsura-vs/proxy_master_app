call git clone https://%GITHUB_TOKEN%@github.com/batsura-vs/proxy_master
cd proxy_master
call flutter create --platforms=windows,macos,linux .
call flutter build windows
call .\Appacker_v1.3.11.exe -s "build\windows\runner\Release" -e ".\proxy_master.exe"
mv build\windows\runner\proxy_master.exe ..\app\windows\proxy_master.exe
cd ..
rmdir /s /q proxy_master
call git pull
call git config --global user.email "batsura.vs@gmail.com"
call git config --global user.name "auto"
call git add -A
call git commit -m "%date%"
call git push