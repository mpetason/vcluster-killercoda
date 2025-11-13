apt-get install kubectx -y

touch welcome.sh

echo printf '\n\033[1;38;5;45m╔══════════════════════════════════════════════════════╗\033[0m\n' >> welcome.sh
echo printf '\033[1;38;5;45m║\033[0m \033[1;97mWelcome to v101 - vCluster Basics!\033[0m          \033[1;38;5;45m║\033[0m\n' >> welcome.sh
printf '\033[1;38;5;45m╚══════════════════════════════════════════════════════╝\033[0m\n\n' >> welcome.sh

sudo sh ./welcome.sh