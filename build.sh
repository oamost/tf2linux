# build vpc projgen
#
make -C $(pwd)/tf2_src/external/vpc/utils/vpc

# generate launcher, launcher_main, engine, and game projects
#
cd tf2_src/devtools/bin

./vpc_linux /v +launcher
./vpc_linux /v +launcher_main
./vpc_linux /v +engine
./vpc_linux /v +gamedlls /allgames