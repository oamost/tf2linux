# entering thirdparty dir
#
echo "changing dir..."
cd tf2_src/thirdparty

# extracting package
#
gzip -d protobuf-2.6.1.tar.gz && tar -xf protobuf-2.6.1.tar

rm protobuf-2.6.1.tar
mv protobuf-2.6.1 protobuf-2.6.1-src
mkdir protobuf-2.6.1

cd protobuf-2.6.1-src

# building package
#
echo "building protobuf-2.6.1 - please wait..."

./autogen.sh
./configure

make > /dev/null

# build log
#
touch ../../../protobuf.log
date > ../../../protobuf.log

make check | grep testsuite\ summary -A7 -i >> ../../../protobuf.log

echo "finished..."

# inform about results
#
failed1 = $(cat ../../../protobuf.log | grep xfail -i | awk '{print $2}')
failed2 = $(cat ../../../protobuf.log | grep fail -i | awk '{print $2}')

if [ "$failed1" -ne 0 ] || [ "$failed2" -ne 0 ]; then
    echo "failed - see protobuf.log for details"
else
    echo "success"


