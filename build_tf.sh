# entering client dir
#
echo "entering client dir..."
cd tf2_src/game/client

# build client
# 
echo "building client.so..."
make -f client_linux32_tf.mak rebuild

