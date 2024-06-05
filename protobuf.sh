# entering thirdparty dir
#
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

make clean
make

# build log
#
touch ../../../protobuf.log
date > ../../../protobuf.log

make check | grep testsuite\ summary -A7 -i >> ../../../protobuf.log

# inform about results
#
failed1=$(grep -i 'XFAIL' ../../../protobuf.log | awk '{print $2}' | tr -cd '[:digit:]')
failed2=$(grep -i 'FAIL' ../../../protobuf.log | awk '{print $2}' | tr -cd '[:digit:]')

if [[ "$failed1" -gt 0 ]] || [[ "$failed2" -gt 0 ]]; then
    echo "failed - see protobuf.log for details"
else
    echo "success - build passed - all tests passed"
fi



