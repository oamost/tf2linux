# entering thirdparty dir
#
echo "changing dir..."
cd tf2_src/thirdparty

# extracting package
#
gzip -d protobuf-2.6.1.tar.gz && tar -xf protobuf-2.6.1.tar
rm protobuf-2.6.1.tar
cd protobuf-2.6.1

# building package
#
./autogen.sh
./configure

make

# build log
#
touch ../../../protobuf.log
date > ../../../protobuf.log

make check | grep testsuite\ summary -A7 -i >> ../../../protobuf.log

