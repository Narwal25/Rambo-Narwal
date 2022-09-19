#!/usr/bin/env bash
########################################################################
#                                                                      #
#                                                                      #     
#                                                                      #
#                                                                      # 
#                     This is just a test file :)                      # 
#                                                                      #
#                                                                      #
#                                                                      #
#                                                                      #
########################################################################
# shellcheck source=/dev/null
#tr setaf 5
echo -e "\e[35mFollowing files are going to be backed up :) \e[0m"
#tr setaf 7
source inputfile.sh 

#code to find package manager >>>>>>

FILE=$(zenity --file-selection --multiple --title="Select a File")

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac

#declare -A osInfo;
#osInfo[/etc/redhat-release]=yum
#osInfo[/etc/arch-release]=pacman
#osInfo[/etc/gentoo-release]=emerge
#osInfo[/etc/SuSE-release]=zypp
#osInfo[/etc/debian_version]=apt-get
#osInfo[/etc/alpine-release]=apk
#for f in "${!osInfo[@]}"
#do
#    if [[ -f $f ]];then
#        echo Package manager: ${osInfo[$f]}
#    fi
#done
#

#code to install paackges from desired package manager >>>>>

#packagesNeeded=$pkg_inst
#if [ -x "$(command -v apk)" ]
#then
#sudo apk add --no-cache "$packagesNeeded"
#elif [ -x "$(command -v pacman)" ];
#then
#sudo pacman -S "$packagesNeeded"
#elif [ -x "$(command -v apt-get)" ];
#then
#sudo apt-get install "$packagesNeeded"
#elif [ -x "$(command -v dnf)" ];
#then
#sudo dnf install "$packagesNeeded"
#elif [ -x "$(command -v zypper)" ]; 
#then sudo zypper install "$packagesNeeded"
#else 
#echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install:
#$packagesNeeded">&2;
#fi
#test_function() {
#echo Test
#}
#result=$(test_function)
#echo "$result" is saved in a variable for later use

#code to solve bug, if no. of not installed packages is 0 >>>>>>

#distro=("redhat linux" "debian linux" "gentoo linux")
#echo element 0 = "${distro[0]}"
#echo element 1 = "${distro[2]}"
#
#
#
#echo direct length = ${#distro[@]}
#length=${#distro[@]}
#echo length by variable = "$length"
#
#if [ "$length" -eq 0 ]
#then
#echo hello
#else
#echo not hello
#fi

# code for rsync testing >>>>>>

while true;
do
read -p "Do you want to proceed? (y/N) " yn

case $yn in 
	[yY] ) echo -e "\e[32m ok, we will do stuff \e[0m";
		    break;;
	[nN] ) echo -e "\e[31m exiting...\e[0m";
		    exit;;
	* )  echo -e "\e[31m Invalid response..\e[0m";
    
esac
done
echo ""
echo " Doing stuff... "
myArray=$(bash inputfile.sh | tr "\n"  " ")
sleep 1s
target=("${myArray[@]}")
destination=test/
for items in "${target[@]}";
do
tput setaf 2
eval rsync -Rrnv --progress "$items"  "$destination";
tput setaf 7
echo ""
done
echo ""
exa -al --color=always -F $destination
tree -ah $destination