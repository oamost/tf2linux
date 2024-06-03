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
echo "cleaning log file..."
touch build.log
> build.log 

# build vpc projgen
#
echo -e "\nbuilding vpc - please wait..."
make -C $(pwd)/tf2_src/external/vpc/utils/vpc >> /dev/null

# generate launcher, launcher_main, engine, and game projects
#
echo "entering vpc directory..."
cd tf2_src/devtools/bin

echo "launching vpc to generate projects..."
./vpc_linux /v +launcher >> ../../../build.log
./vpc_linux /v +launcher_main >> ../../../build.log
./vpc_linux /v +engine >> ../../../build.log
./vpc_linux /v +gamedlls /allgames >> ../../../build.log

echo -e "\nfinished generating projects..."
echo "leaving vpc directory..."

cd ../../../

# projgen summary: 
#
echo -e "\nbuild.log summary: \n"
echo "total errors: "; cat build.log | grep error -i | wc -l
echo "total warnings: "; cat build.log | grep warning -i | wc -l
echo -e "\nerror details: \n"; cat build.log | grep error -i -B1

echo -e "\ndone."