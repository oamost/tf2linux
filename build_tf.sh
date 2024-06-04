# entering client dir
#
echo "entering client dir..."
cd tf2_src/game/client

# build client
# 
echo "building client.so..."
make -f client_linux32_tf.mak # TODO next: resolve makefile_base_posix.mak related issues

