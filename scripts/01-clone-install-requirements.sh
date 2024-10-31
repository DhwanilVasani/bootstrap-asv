#! /bin/bash
cd /home/ubuntu

read -p "Enter your GitHub username: " github_username

# Prompt user for Personal Access Token
read -s -p "Enter your GitHub Personal Access Token: " github_pat

echo ""
echo "GitHub Username: $github_username"
echo "Personal Access Token: [Hidden]"

echo ""
echo "=================="
echo "Cloning repo"
echo "=================="
echo ""


git clone https://$github_username:$github_pat@github.com/JohnYanxinLiu/IDL_Group56_Voice_Privacy_Challenge.git Voice-Privacy-Challenge-2024
echo $?
# if [[ $?!=0 ]];then
#     echo "Issue cloning repo"
#     exit -1
# fi
echo ""
echo "======================="
echo "installing dependencies"
echo "======================="
echo ""

cd ./Voice-Privacy-Challenge-2024/
chmod +x ./00_install.sh 
./00_install.sh
source env.sh

echo ""
echo "======================="
echo "Success!!"
echo "======================="

