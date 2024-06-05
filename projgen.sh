# display warning message
#
clear
echo -e "WARNING: This will erase all the current state of your project files.\nAre you SURE you want to continue regen everything? (y/n)\n\n"
read -n 1 answer

if [[ "$answer" == "n" || "$answer" == "N" ]]; then
    echo -e "\nExiting..."
    exit
else
    echo -e "\nBuild script initiated by user..."
fi

# clean repo
#
echo -e "\ncleaning repo..."
git clean -dfx >> /dev/null

# clear log for registering current build log
#
echo "clearing log file..."
touch projgen.log
> projgen.log 

# build vpc projgen
#
echo -e "\nbuilding vpc - please wait..."
make -C $(pwd)/tf2_src/external/vpc/utils/vpc >> /dev/null

# generate launcher, launcher_main, engine, and game projects
#
echo "entering vpc directory..."
cd tf2_src/devtools/bin

echo "launching vpc to generate projects..."
./vpc_linux /v +launcher >> ../../../projgen.log
./vpc_linux /v +launcher_main >> ../../../projgen.log
./vpc_linux /v +engine >> ../../../projgen.log
./vpc_linux /v +gamedlls /allgames >> ../../../projgen.log

echo -e "\nfinished generating projects..."
echo "leaving vpc directory..."

cd ../../../

# projgen summary: 
#
echo -e "\nprojgen.log summary: \n"
echo "total errors: "; cat projgen.log | grep error -i | wc -l
echo "total warnings: "; cat projgen.log | grep warning -i | wc -l
echo -e "\nerror details: \n"; cat projgen.log | grep error -i -B1

echo -e "\ndone."