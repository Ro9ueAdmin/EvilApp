# Install dependencies for EvilApp
# Author: https://github.com/thelinuxchoice/EvilApp


if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[1;77mPlease, run this program as root!\n\e[0m"
    exit 1
fi



printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Updating and downloading dependencies\n"
apt-get update;
apt-get install -y default-jdk apksigner libc6-dev-i386 lib32z1 lib32ncurses6 lib32stdc++6;

wget  https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

if [[ -e sdk-tools-linux-4333796.zip ]]; then
mkdir -p $HOME/Android/Sdk
unzip sdk-tools-linux-4333796.zip -d $HOME/Android/Sdk
else

printf "e[1;93m[!] Download Error!\e[0m\n"
exit 1
fi

if [[ -d $HOME/Android/Sdk ]]; then

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "Y" | sdk install java 8.0.191-oracle
sdk use java 8.0.191-oracle
sdk install gradle 2.14.1
sdk use gradle 2.14.1
echo "y" | $HOME/Android/Sdk/tools/bin/sdkmanager "platforms;android-25" "build-tools;25.0.1" "extras;google;m2repository" "extras;android;m2repository"
else
printf "e[1;93m[!] Error!\e[0m\n"
exit 1
fi
