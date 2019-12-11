cd ~
mkdir FinalProjectRepository
cd FinalProjectRepository
git init
cd ..
cd ..
cd ..
cd Library
cd WebServer
cp -R Documents/ ~/FinalProjectRepository
cd ~/FinalProjectRepository


curl -u 'carr0495' https://api.github.com/user/repos -d '{"name":"mad9112Final"}'

git add .
git commit -m "finished step a - f"
git remote add origin https://github.com/carr0495/mad9112Final.git
git push -u origin master

sleep 5s

ssh  azureuser@52.255.228.132 "git clone https://github.com/carr0495/mad9112Final.git && 
cd mad9112Final &&
rm -rf .git &&
sudo mv index.html /var/www/html
sudo mv index.html.en /var/www/html &&
sudo mv index.htm /var/www/html &&
sudo mv missing.html /var/www/html &&
sudo mv -R subdirectory /var/www/html &&
sudo mv REPO /var/www/html &&
sudo service nginx restart"

# git commit -am "finished step g"

open 'http://carr0495.serveminecraft.net'

# git commit -am "finished step h"


~/Library/Android/sdk/emulator/emulator -avd Pixel_API_23 &
cd ~/Library/Android/sdk/platform-tools
./adb reboot
# git commit -am "finished step i"
sleep 7s
./adb shell am start -a android.intent.action.VIEW -d http://carr0495.serveminecraft.net/
# git commit -am "finished step j"

cd ~

cp Archive.zip ~/FinalProjectRepository

cd ~/FinalProjectRepository

mkdir DockerTemp

mv Archive.zip DockerTemp
cd DockerTemp

echo "FROM ubuntu-latest &&
RUN apt update && apt install -y nginx && apt install -y unzip
COPY * /var/www/html/
WORKDIR /var/www/html
RUN unzip Archive.zip
CMD "["/usr/sbin/nginx", "-g", "daemon off;"]"
EXPOSE 80" >> Dockerfile

# git commit -am "finished step k and l"
docker build . -t myserver:v1
docker images
docker run -p 1234:80 myserver:v1

# git commit -am "finished step m"



/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator -CurrentDeviceUDID 14A1325B-FAA2-45EA-87F4-0A784185B3F4 &
sleep 5s
xcrun simctl openurl booted http://localhost:1234/
# git commit -am "finished step n"

cd ~

ssh azureuser@52.255.228.132 "sudo apt-get upgrade -y &&
sudo shutdown -h now"

# git commit -am "finished step o"

open 'http://carr0495.serveminecraft.net'

cd ~/FinalProjectRepository

# git commit -am "finished step p"
git add .
git commit -am "part 2 finished commit"
git push

git checkout -b FinalComments


cd ~
cp frame.png ~/FinalProjectRepository
cd FinalProjectRepository
echo "Aiden Carrie | 040768151 | http://bit.ly/carr0495_MAD9112" >> README.txt
git add README.txt
git add frame.png
git commit -m "added file and QR"
git push origin FinalComments
git checkout master
git merge FinalComments
cd ~
cp final.sh FinalProjectRepository
tar –cfj FinalProject_AidenCarrie.tar FinalProjectRepository