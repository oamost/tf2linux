# clean repo
#
echo -e "deep cleaning repo...\n"

git clean -dfx >> /dev/null
git reset --hard

##################################################################################################
#                                       BUILD PROTOBUF
##################################################################################################
# entering thirdparty dir
#
tf2_src=$(pwd)/tf2_src

build_tf2() 
{
    echo -e "\nBuild started..."
    
    cd $(tf2_src)/thirdparty

    # extracting package
    #
    gzip -dk protobuf-2.6.1.tar.gz && tar -xf protobuf-2.6.1.tar
    rm protobuf-2.6.1.tar

    cd protobuf-2.6.1

    # building package
    #
    export CFLAGS="-m32"
    export CXXFLAGS="-m32"
    export LDFLAGS="-m32"

    ./autogen.sh
    ./configure

    make clean
    make
    sudo make install

    # build log
    #
    touch $(tf2_src)/../build.log
    date > $(tf2_src)/../build.log

    make check | grep testsuite\ summary -A7 -i >> $(tf2_src)/../build.log

    # inform about results
    #
    failed1=$(grep -i 'XFAIL' $(tf2_src)/../build.log | awk '{print $2}' | tr -cd '[:digit:]')
    failed2=$(grep -i 'FAIL' $(tf2_src)/../build.log | awk '{print $2}' | tr -cd '[:digit:]')

    if [[ "$failed1" -gt 0 ]] || [[ "$failed2" -gt 0 ]]; then
        echo "failed - see build.log for details"
    else
        echo "success - build passed - all tests passed"
    fi

    # copy executable to target location
    #
    mkdir -p $(tf2_src)/thirdparty/protobuf-2.6.1/bin/linux32/out
    cp src/.libs/* $(tf2_src)/thirdparty/protobuf-2.6.1/bin/linux32/out
    cd ..

    cp protobuf-2.6.1/bin/linux32/out/* protobuf-2.6.1/bin/linux32
    cp /usr/local/bin/protoc protobuf-2.6.1/bin/linux32

##################################################################################################
#                                       BUILD LIBRARIES
##################################################################################################
# bitmap.a
#
    cd $(tf2_src)/bitmap
    make -f bitmap_linux32.mak rebuild
    mv bitmap.a $(tf2_src)/lib/public/linux32

    # choreoobjects.a
    #
    cd $(tf2_src)/choreoobjects
    make -f choreoobjects_linux32.mak rebuild
    mv choreoobjects.a $(tf2_src)/lib/public/linux32

    # dmxloader.a
    #
    cd $(tf2_src)/dmxloader
    make -f dmxloader_linux32.mak rebuild
    mv dmxloader.a $(tf2_src)/lib/public/linux32

    # mathlib.a
    #
    cd $(tf2_src)/mathlib
    make -f mathlib_linux32.mak rebuild
    mv mathlib.a $(tf2_src)/lib/public/linux32

    # particles.a
    #
    cd $(tf2_src)/particles
    make -f particles_linux32.mak rebuild
    mv particles.a $(tf2_src)/lib/public/linux32

    # replay_common.a
    #
    cd $(tf2_src)/replay/common
    make -f replay_common_linux32.mak rebuild
    mv replay_common.a $(tf2_src)/lib/common/linux32

    # replay.a
    #
    cd $(tf2_src)/replay
    make -f replay_linux32.mak rebuild
    mv replay.a $(tf2_src)/lib/public/linux32

    # tier1.a
    #
    cd $(tf2_src)/tier1
    make -f tier1_linux32.mak rebuild
    mv tier1.a $(tf2_src)/lib/public/linux32

    # tier2.a
    #
    cd $(tf2_src)/tier2
    make -f tier2_linux32.mak rebuild
    mv tier2.a $(tf2_src)/lib/public/linux32

    # tier3.a
    #
    cd $(tf2_src)/tier3
    make -f tier3_linux32.mak rebuild
    mv tier3.a $(tf2_src)/lib/public/linux32

    # matsys.a
    #
    cd $(tf2_src)/vgui2/matsys_controls
    make -f matsys_controls_linux32.mak rebuild
    mv matsys_controls.a $(tf2_src)/lib/public/linux32

    # vgui_controls.a
    #
    cd $(tf2_src)/vgui_controls
    make -f vgui_controls_linux32.mak rebuild
    mv vgui_controls.a $(tf2_src)/lib/public/linux32

    # vtf.a
    #
    cd $(tf2_src)/vtf
    make -f vtf_linux32.mak rebuild
    mv vtf.a $(tf2_src)/lib/public/linux32

    # gcsdk.a
    #
    cd $(tf2_src)/gcsdk
    make -f gcsdk_linux32.mak rebuild
    mv gcsdk.a $(tf2_src)/lib/public/linux32

    # libtier0.so
    #
    cd $(tf2_src)/tier0
    make -f tier0_linux32.mak rebuild
    mv obj_tier0_linux32/release/libtier0.so $(tf2_src)/lib/public/linux32

    # libvstdlib.so
    #
    cd $(tf2_src)/vstdlib
    make -f vstdlib_linux32.mak rebuild
    mv obj_vstdlib_linux32/release/libvstdlib.so $(tf2_src)/lib/public/linux32

    # vpklib.a
    #
    cd $(tf2_src)/vpklib
    make -f vpklib_linux32.mak rebuild
    mv vpklib.a $(tf2_src)/lib/public/linux32

##################################################################################################
#                                       BUILD CLIENT
##################################################################################################

    # entering client dir
    #
    echo "entering client dir..."
    cd $(tf2_src)/game/client

    # build client
    # 
    echo "building client.so..."
    make -f client_linux32_tf.mak rebuild
}

##################################################################################################
#                                       VPC PROJGEN
##################################################################################################
vpc_projgen()
{
    echo -e "\Projgen initiated by user... Resetting all make files to defaults."    

    # clear log for registering current build log
    #
    echo "clearing log file..."
    touch build.log
    > build.log 

    # build vpc build
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

    # generate additional dependency projects
    #
    echo "generating additional dependency projects..."
    ./vpc_linux /v +bitmap >> ../../../build.log
    ./vpc_linux /v +choreoobjects >> ../../../build.log
    ./vpc_linux /v +dmxloader >> ../../../build.log
    ./vpc_linux /v +mathlib >> ../../../build.log
    ./vpc_linux /v +particles >> ../../../build.log
    ./vpc_linux /v +replay_common >> ../../../build.log
    ./vpc_linux /v +replay >> ../../../build.log
    ./vpc_linux /v +tier1 >> ../../../build.log
    ./vpc_linux /v +tier2 >> ../../../build.log
    ./vpc_linux /v +tier3 >> ../../../build.log
    ./vpc_linux /v +matsys_controls >> ../../../build.log
    ./vpc_linux /v +vgui_controls >> ../../../build.log
    ./vpc_linux /v +vtf >> ../../../build.log
    ./vpc_linux /v +gcsdk >> ../../../build.log
    ./vpc_linux /v +tier0 >> ../../../build.log
    ./vpc_linux /v +vstdlib >> ../../../build.log

    echo -e "\nfinished generating projects..."
    echo "leaving vpc directory..."

    cd ../../../

    # build summary: 
    #
    echo -e "\nbuild.log summary: \n"
    echo "total errors: "; cat build.log | grep error -i | wc -l
    echo "total warnings: "; cat build.log | grep warning -i | wc -l
    echo -e "\nerror details: \n"; cat build.log | grep error -i -B1

    echo -e "\ndone."
}

##################################################################################################
#                                       BUILD SCRIPT ENTRY POINT
##################################################################################################
# display warning message
#
clear
echo -e "1.) to start BUILD ALL press (y)\n2.) to init RESET ALL make files, press (n)\n\nWARNING: if you regen all make files, the build may become broken\n\n"
read -n 1 answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then

    # build
    #
    build_tf2

else

    # regen
    #
    vpc_projgen

fi