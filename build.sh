cd ~/
mkdir flyme
cd flyme
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
yes | repo init -u https://github.com/GODz-Android-Dev/manifest -b nougat-7.1
repo sync -c
chmod -R 777 devices/a106/
source build/envsetup.sh
ca106
flyme fullota
sudo apt install curl
export DATEA=$(date +"%d%m%y")
curl --upload-file out/f*.zip https://transfer.sh/Flyme_N_a106_$DATEA.zip
