# src root
#
tf2_src=$(pwd)/tf2_src
tf2linux32_build_arg1=""

# full-build argument
#
if [[ "$1" == "--yes-to-all" ]]; then

    tf2linux32_build_arg1="1"

    echo -e "WARNING: vpc is not supported in this mode. \n"

else
    tf2linux32_build_arg1="0"
fi

# clean repo + init log
#
perform_deep_clean()
{
    git clean -dfx >> /dev/null
    git reset --hard        
}

if [[ $tf2linux32_build_arg1 == 1 ]]; then

    perform_deep_clean

else

    echo -e "\n################## CLEAN ALL? ##################\n"

    echo -e "Do you want a deep clean (purging junk from previous build)? (1) To yes, anything else to continue..."
    read -n 1 should_deep_clean

    if [[ "$should_deep_clean" == 1 ]]; then

        # deep clean
        #
        perform_deep_clean

        echo -e "Deep cleaning SRC from previous build artifacts: done" >> build.log

    else 

        echo -e "User skipped deep cleaning...\n"

    fi

fi

echo -e "---------------------------------tf2linux32 build log---------------------------------" > build.log
date >> build.log
echo -e "------------------------------------------------------------------------------------\n" >> build.log

##################################################################################################
#                                       BUILD TF2 JUNGLE INFERNO DEBUG X86 (https://steamdb.info/app/440/depots/?branch=pre_jungleinferno_demos)
##################################################################################################
build_tf2() 
{
    ##################################################################################################
    #                                       BUILD 3rd PARTY GOOGLE PROTOBUF
    ##################################################################################################
    build_protobuf()
    {
        echo -e "\nBuilding 3rd party libprotobuf...\n" >> $tf2_src/../build.log

        # entering thirdparty dir
        #
        cd $tf2_src/thirdparty

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
        ./configure --enable-static=yes --disable-shared --enable-silent-rules

        make clean
        make CXXFLAGS="-m32 -D_GLIBCXX_USE_CXX11_ABI=0 -w" >> $tf2_src/../build.log
        sudo make install CXXFLAGS="-m32 -w" >> $tf2_src/../build.log

        echo "protobuf build completed. running tests. please wait..."

        make check CXXFLAGS="-m32 -D_GLIBCXX_USE_CXX11_ABI=0 -w" | grep testsuite\ summary -A7 -i >> $tf2_src/../build.log

        # inform about results
        #
        failed1=$(grep -i 'XFAIL' $tf2_src/../build.log | awk '{print $2}' | tr -cd '[:digit:]')
        failed2=$(grep -i 'FAIL' $tf2_src/../build.log | awk '{print $2}' | tr -cd '[:digit:]')

        if [[ "$failed1" -gt 0 ]] || [[ "$failed2" -gt 0 ]]; then
            echo "failed - see build.log for details"
        else
            echo "success - build passed - all tests passed"
        fi

        # copy executable to target location
        #
        mkdir -p $tf2_src/thirdparty/protobuf-2.6.1/bin/linux32/out
        cp src/.libs/* $tf2_src/thirdparty/protobuf-2.6.1/bin/linux32/out
        cd ..

        cp protobuf-2.6.1/bin/linux32/out/* protobuf-2.6.1/bin/linux32
        cp /usr/local/bin/protoc protobuf-2.6.1/bin/linux32

        echo -e "\ndone.\n" >> $tf2_src/../build.log

    }   # build_protobuf()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_protobuf

    else
     
        echo -e "------------------ GOOGLE PROTOBUF  (INSTALLS WITH SUDO) ------------------\n"
        echo -e "\nBuild 3rd party Google Protobuf (2.6.1) from SRC? All tests will run implicitly. See the log for results. (1) To yes, anything else to continue."
        read -n 1 should_build_protobuf

        if [[ "$should_build_protobuf" == "1" ]]; then

            # build protobuf
            #
            build_protobuf

        else

            echo -e "\nuser skipped build protobuf...\n";

        fi

    fi

    ##################################################################################################
    #                                       BUILD GAME LIBRARIES
    ##################################################################################################
    build_libs()
    {
        echo -e "\nBuilding game libraries... This could take some time.\n" >> $tf2_src/../build.log

        # appframework.a
        #
        echo -e  "\n\nCurrently building: appframework.a\n\n"
        cd $tf2_src/appframework
        make -f appframework_linux32.mak rebuild
        mv appframework.a $tf2_src/lib/public/linux32
        echo -e  "done: appframework.a" >> $tf2_src/../build.log

        echo "\ndone.\n" >> $tf2_src/../build.log

        # bitmap.a
        #
        echo -e  "\n\nCurrently building: bitmap.a\n\n"
        cd $tf2_src/bitmap
        make -f bitmap_linux32.mak rebuild
        mv bitmap.a $tf2_src/lib/public/linux32
        echo -e  "done: bitmap.a" >> $tf2_src/../build.log

        # choreoobjects.a
        #
        echo -e  "\n\nCurrently building: choreoobjects.a\n\n"
        cd $tf2_src/choreoobjects
        make -f choreoobjects_linux32.mak rebuild
        mv choreoobjects.a $tf2_src/lib/public/linux32
        echo -e  "done: choreoobjects.a" >> $tf2_src/../build.log

        # dmxloader.a
        # 
        echo -e  "\n\nCurrently building: dmxloader.a\n\n"
        cd $tf2_src/dmxloader
        make -f dmxloader_linux32.mak rebuild
        mv dmxloader.a $tf2_src/lib/public/linux32
        echo -e  "done: dmxloader.a" >> $tf2_src/../build.log

        # mathlib.a
        #
        echo -e  "\n\nCurrently building: mathlib.a\n\n"
        cd $tf2_src/mathlib
        make -f mathlib_linux32.mak rebuild
        mv mathlib.a $tf2_src/lib/public/linux32
        echo -e  "done: mathlib.a" >> $tf2_src/../build.log

        # particles.a
        #
        echo -e  "\n\nCurrently building: particles.a\n\n"
        cd $tf2_src/particles
        make -f particles_linux32.mak rebuild
        mv particles.a $tf2_src/lib/public/linux32
        echo -e  "done: particles.a" >> $tf2_src/../build.log

        # replay_common.a
        #
        echo -e  "\n\nCurrently building: replay_common.a\n\n"
        cd $tf2_src/replay/common
        make -f replay_common_linux32.mak rebuild
        mv replay_common.a $tf2_src/lib/common/linux32
        echo -e  "done: replay_common.a" >> $tf2_src/../build.log

        # replay.a
        #
        echo -e  "\n\nCurrently building: replay.a\n\n"
        cd $tf2_src/replay
        make -f replay_linux32.mak rebuild
        mv replay.a $tf2_src/lib/public/linux32
        echo -e  "done: replay.a" >> $tf2_src/../build.log

        # tier1.a
        #
        echo -e  "\n\nCurrently building: tier1.a\n\n"
        cd $tf2_src/tier1
        make -f tier1_linux32.mak rebuild  >> $tf2_src/../build.log
        mv tier1.a $tf2_src/lib/public/linux32
        echo -e  "done: tier1.a" >> $tf2_src/../build.log

        # tier2.a
        #
        echo -e  "\n\nCurrently building: tier2.a\n\n"
        cd $tf2_src/tier2
        make -f tier2_linux32.mak rebuild
        mv tier2.a $tf2_src/lib/public/linux32
        echo -e  "done: tier2.a" >> $tf2_src/../build.log

        # tier3.a
        #
        echo -e  "\n\nCurrently building: tier3.a\n\n"
        cd $tf2_src/tier3
        make -f tier3_linux32.mak rebuild
        mv tier3.a $tf2_src/lib/public/linux32
        echo -e  "done: tier3.a" >> $tf2_src/../build.log

        # matsys.a
        #
        echo -e  "\n\nCurrently building: matsys.a\n\n"
        cd $tf2_src/vgui2/matsys_controls
        make -f matsys_controls_linux32.mak rebuild
        mv matsys_controls.a $tf2_src/lib/public/linux32
        echo -e  "done: matsys_controls.a" >> $tf2_src/../build.log

        # vgui_controls.a
        #
        echo -e  "\n\nCurrently building: vgui_controls.a\n\n"
        cd $tf2_src/vgui2/vgui_controls
        make -f vgui_controls_linux32.mak rebuild
        mv vgui_controls.a $tf2_src/lib/public/linux32
        echo -e  "done: vgui_controls.a" >> $tf2_src/../build.log

        # vtf.a
        #
        echo -e  "\n\nCurrently building: vtf.a\n\n"
        cd $tf2_src/vtf
        make -f vtf_linux32.mak rebuild
        mv vtf.a $tf2_src/lib/public/linux32
        echo -e  "done: vtf.a" >> $tf2_src/../build.log

        # gcsdk.a
        #
        echo -e  "\n\nCurrently building: gcsdk.a\n\n"
        cd $tf2_src/gcsdk
        make -f gcsdk_linux32.mak rebuild
        mv gcsdk.a $tf2_src/lib/public/linux32
        echo -e  "done: gcsdk.a" >> $tf2_src/../build.log

        # libtier0.so
        #
        echo -e  "\n\nCurrently building: libtier0.a\n\n"
        cd $tf2_src/tier0
        make -f tier0_linux32.mak rebuild
        mv obj_tier0_linux32/debug/libtier0.so $tf2_src/lib/public/linux32
        echo -e  "done: libtier0.so" >> $tf2_src/../build.log

        # libvstdlib.so
        #
        echo -e  "\n\nCurrently building: libvstdlib.a\n\n"
        cd $tf2_src/vstdlib
        make -f vstdlib_linux32.mak rebuild
        mv obj_vstdlib_linux32/debug/libvstdlib.so $tf2_src/lib/public/linux32
        echo -e  "done: libvstdlib.so" >> $tf2_src/../build.log

        # vpklib.a
        #
        echo -e  "\n\nCurrently building: vpklib.a\n\n"
        cd $tf2_src/vpklib
        make -f vpklib_linux32.mak rebuild
        mv vpklib.a $tf2_src/lib/public/linux32
        echo -e  "done: vpklib.a" >> $tf2_src/../build.log

        echo "\ndone.\n" >> $tf2_src/../build.log

    } # build_libs()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_libs

    else

        echo -e "\n------------------ GAME LIBRARIES ------------------\n" 
        echo -e "\nBuild game libraries (mathlib, particles, dmxloader etc.)? (1) to yes, anything else to continue."
        read -n 1 should_build_libs

        if [[ "$should_build_libs" == "1" ]]; then

            # build libs
            #
            build_libs

        else

            echo -e "\nUser skipped build game libraries from SRC...\n";

        fi

    fi

    ##################################################################################################
    #                                       BUILD GAME binaries
    ##################################################################################################

    ######################## client
    #
    build_client() 
    {
        # entering client dir
        #
        echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
        cd $tf2_src/game/client

        # build client
        # 
        echo -e "\nBuilding binaries for client... \n" >> $tf2_src/../build.log
        make -f client_linux32_tf.mak rebuild >> $tf2_src/../build.log
    } # build_client()
    
    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_client

    else

        echo -e "\n------------------ CLIENT ------------------\n"
        echo -e "\nBuild client binaries (client.so, tf2, jungle_inferno, debug) from SRC? (1) To yes, anything else to continue."
        read -n 1 should_build_client_tf

        if [[ "$should_build_client_tf" == "1" ]]; then

            # build client binaries
            #
            build_client

        else

            echo -e "\nUser skipped client binaries...\n";

        fi ######################## client
    
    fi

    ######################## server
    #
    build_server()
    {
        # entering server dir
        #
        echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
        cd $tf2_src/game/server

        # build server
        # 
        echo -e "\nBuilding binaries for server... \n" >> $tf2_src/../build.log
        make -f server_linux32_tf.mak rebuild >> $tf2_src/../build.log
    } # build_server()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_server

    else
    
        echo -e "\n------------------ SERVER ------------------\n"
        echo -e "\nBuild server binaries (server.so, tf2, jungle_inferno, debug) from SRC? (1) To yes, anything else to continue."
        read -n 1 should_build_server_tf

        if [[ "$should_build_server_tf" == "1" ]]; then

            # build server binaries
            #
            build_server

        else

            echo -e "\nUser skipped server binaries...\n";

        fi ######################## server

    fi

    ######################## source engine
    #
    build_engine()
    {
        # entering source engine dir
        #
        echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
        cd $tf2_src/engine

        # build source engine
        # 
        echo -e "\nBuilding binaries for source engine... \n" >> $tf2_src/../build.log
        make -f engine_linux32.mak rebuild >> $tf2_src/../build.log
    } # build_engine()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_engine

    else

        echo -e "\n------------------ ENGINE ------------------\n"
        echo -e "\nBuild source engine binaries (engine.so, source engine) from SRC? (1) To yes, anything else to continue."
        read -n 1 should_build_source_engine

        if [[ "$should_build_source_engine" == "1" ]]; then

            # build source engine binaries
            #
            build_engine

        else

            echo -e "\nUser skipped source engine binaries...\n";

        fi ######################## source engine   

    fi

    ######################## togl
    #
    build_togl()
    {
        # entering togl dir
        #
        echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
        cd $tf2_src/togl

        # build togl
        # 
        echo -e "\nBuilding binaries for togl... \n" >> $tf2_src/../build.log
        make -f togl_linux32.mak rebuild >> $tf2_src/../build.log
        cp $tf2_src/togl/obj_togl_linux32/debug/libtogl.so $tf2_src/lib/public/linux32/libtogl.so
    } # build_launcher()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_togl

    else

        echo -e "\n------------------ TOGL ------------------\n"
        echo -e "\nBuild togl binaries (shared object) from SRC? (1) To yes, anything else to continue."
        read -n 1 should_build_togl

        if [[ "$should_build_togl" == "1" ]]; then

            # build togl binaries
            #
            build_togl

        else

            echo -e "\nUser skipped togl binaries...\n";

        fi ######################## togl

    fi

    ######################## launcher
    #
    build_launcher()
    {
        # entering launcher dir
        #
        echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
        cd $tf2_src/launcher

        # build launcher
        # 
        echo -e "\nBuilding binaries for launcher... \n" >> $tf2_src/../build.log
        make -f launcher_linux32.mak rebuild >> $tf2_src/../build.log
    } # build_launcher()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_launcher

    else

        echo -e "\n------------------ LAUNCHER ------------------\n"
        echo -e "\nBuild launcher binaries (shared object) from SRC? (1) To yes, anything else to continue."
        read -n 1 should_build_launcher

        if [[ "$should_build_launcher" == "1" ]]; then

            # build launcher binaries
            #
            build_launcher

        else

            echo -e "\nUser skipped launcher binaries...\n";

        fi ######################## launcher

    fi

    ######################## vphysics
    #
    #build_vphysics()
    #{
        # entering vphysics dir
        #
    #    echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
    #    cd $tf2_src/vphysics

        # build vphysics
        # 
    #    echo -e "\nBuilding binaries for vphysics... \n" >> $tf2_src/../build.log
    #    make -f vphysics_linux32.mak rebuild >> $tf2_src/../build.log
    #} # build_vphysics()

    #if [[ $tf2linux32_build_arg1 == 1 ]]; then

    #    build_vphysics

    #else

        #echo -e "\n------------------ VPHYSICS ------------------\n"
        #echo -e "\nBuild vphysics binaries (shared object) from SRC? (1) To yes, anything else to continue."
        #read -n 1 should_build_vphysics

        #if [[ "$should_build_vphysics" == "1" ]]; then

            # build vphysics binaries
            #
       #     build_vphysics

      #  else

     #       echo -e "\nUser skipped vphysics binaries...\n";

    #    fi ######################## vphysics

    # fi

    ######################## gameui
    #
    build_gameui()
    {
        # entering gameui dir
        #
        echo "Build started. You can follow build.log for details. This could take between 5-10 minutes..."
        cd $tf2_src/gameui

        # build gameui
        # 
        echo -e "\nBuilding binaries for gameui... \n" >> $tf2_src/../build.log
        make -f GameUI_linux32.mak rebuild >> $tf2_src/../build.log
    } # build_gameui()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        build_gameui

    else

        echo -e "\n------------------ GAMEUI ------------------\n"
        echo -e "\nBuild gameui binaries (shared object) from SRC? (1) To yes, anything else to continue."
        read -n 1 should_build_gameui

        if [[ "$should_build_gameui" == "1" ]]; then

            # build vphysics binaries
            #
            build_gameui

        else

            echo -e "\nUser skipped gameui binaries...\n";

        fi ######################## gameui

    fi

    ######################## drop build to install location
    #
    drop_build_to_target_location()
    {
        client_build_path="$tf2_src/game/client/obj_client_tf_linux32/debug/client.{map,so}"
        server_build_path="$tf2_src/game/server/obj_server_tf_linux32/debug/server.{map,so}"
        engine_build_path="$tf2_src/engine/obj_engine_linux32/debug/engine.{map,so}"
        launcher_build_path="$tf2_src/launcher/obj_launcher_linux32/debug/launcher.{map,so}"
        gameui_build_path="$tf2_src/gameui/obj_gameui_linux32/debug/GameUI.{map,so}"

        echo -e "Creating backups of installed binaries...\n"
        
        mkdir -pv "$tf_drop_path/backup"
        cp "$tf_drop_path/client.so" "$tf_drop_path/backup/"
        cp "$tf_drop_path/server.so" "$tf_drop_path/backup/"
        mkdir -pv "$engine_drop_path/backup"
        cp "$engine_drop_path/engine.so" "$engine_drop_path/backup/"
        mkdir -pv "$launcher_drop_path/backup"
        cp "$launcher_drop_path/launcher.so" "$launcher_drop_path/backup/"

        # echo -e "...Done.\n Moving build output to target...\n"

        # TODO
        #    
    } # drop_build_to_target_location()

    if [[ $tf2linux32_build_arg1 == 1 ]]; then

        drop_build_to_target_location

    else

        echo -e "\n------------------ DEBUG BUILD TO TARGET ------------------\n"
        echo -e "\nMoving build artifacts to target location..."

        drop_build_to_target_location # drop build to target location

    fi

} ##################### BUILD TF2 JUNGLE INFERNO DEBUG X86 (https://steamdb.info/app/440/depots/?branch=pre_jungleinferno_demos)

##################################################################################################
#                                       VALVE PROJECT GENERATOR (VPC) tool runner (VALVE DEFAULTS)
##################################################################################################
vpc_projgen()
{
    echo -e "\RESET SRC initiated by user... Resetting all SRC files to defaults..."    
    echo -e "\n\nbuilding vpc projgen...\n" >> $tf2_src/../build.log

    # clear log for registering current build log
    #
    echo "Clearing log file..."
    touch build.log
    > build.log 

    # build vpc build
    #
    echo -e "\nBuilding Valve Project Generator tool (VPC) from SRC - Please wait..."
    make -C $(pwd)/tf2_src/external/vpc/utils/vpc >> /dev/null

    # generate launcher, launcher_main, engine, and game projects
    #
    echo "Entering vpc directory..."
    cd tf2_src/devtools/bin

    echo -e "\n\nLaunching vpc to generate projects...\n" >> $tf2_src/../build.log

    ./vpc_linux /v +launcher >> $tf2_src/../build.log
    ./vpc_linux /v +launcher_main >> $tf2_src/../build.log
    ./vpc_linux /v +engine >> $tf2_src/../build.log
    ./vpc_linux /v +gamedlls /allgames >> $tf2_src/../build.log

    # generate additional dependency projects
    #
    echo "Generating additional dependency projects..."

    ./vpc_linux /v +bitmap >> $tf2_src/../build.log
    ./vpc_linux /v +choreoobjects >> $tf2_src/../build.log
    ./vpc_linux /v +dmxloader >> $tf2_src/../build.log
    ./vpc_linux /v +mathlib >> $tf2_src/../build.log
    ./vpc_linux /v +particles >> $tf2_src/../build.log
    ./vpc_linux /v +replay_common >> $tf2_src/../build.log
    ./vpc_linux /v +replay >> $tf2_src/../build.log
    ./vpc_linux /v +tier1 >> $tf2_src/../build.log
    ./vpc_linux /v +tier2 >> $tf2_src/../build.log
    ./vpc_linux /v +tier3 >> $tf2_src/../build.log
    ./vpc_linux /v +matsys_controls >> $tf2_src/../build.log
    ./vpc_linux /v +vgui_controls >> $tf2_src/../build.log
    ./vpc_linux /v +vtf >> $tf2_src/../build.log
    ./vpc_linux /v +gcsdk >> $tf2_src/../build.log
    ./vpc_linux /v +tier0 >> $tf2_src/../build.log
    ./vpc_linux /v +vstdlib >> $tf2_src/../build.log
    ./vpc_linux /v +appframework >> $tf2_src/../build.log

    echo -e "\nFinished generating projects..."
    echo "Leaving VPC directory..."

    cd ../../../

    # build summary: 
    #
    echo -e "\nbuild.log summary: \n"
    echo "Total errors: "; cat build.log | grep error -i | wc -l
    echo "Total warnings: "; cat build.log | grep warning -i | wc -l
    echo -e "\nError details: \n"; cat build.log | grep error -i -B1

    echo -e "\nDone."
}

##################################################################################################
#                                       SCRIPT ENTRY POINT
##################################################################################################

# checking pre-conditions
#
echo -e "\n################## CHECKING PRE-CONDITIONS: ##################\n"

echo -e "Before continuing, make sure to have the following launch option set for the game in Steam client:\n\n"
echo -e "./hl2_linux -game tf -insecure -novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime\n\n"

echo -e "Looking for Team Fortress 2 install location...\n"

app440=$(find ~ /mnt /media /run/media -type d -name "Team Fortress 2" -exec test -f '{}/hl2_linux' \; -print 2>/dev/null)

if [[ "$app440" == "" ]]; then

    echo -e "Game install location not found. Terminating build script.\n"

    exit 

else 

    echo -e "Found game install location at: $app440\n"
    echo -e "Checking manifest...\n"

    matchflag=$(cat "$app440"/../../appmanifest_440.acf | grep pre_jungleinferno_demos | wc -l)

    if [[ $matchflag == "2" ]]; then

        echo -e "Appversion check passed...\n"

        echo -e "Creating a tf.sh equivalent from hl2.sh (workaround)..."
        cp "$app440/hl2.sh" "$app440/tf.sh"

    else 

        echo -e "Appversion validation check failed.\n Make sure to download 'Team Fortress 2' via Steam client and opt-into 'pre_jungleinferno_demos' via Betas in the gamesettings.\n Terminating build script...\n"

        exit

    fi

fi # pre_jungle_inferno beta install check

if [[ $tf2linux32_build_arg1 == 1 ]]; then

    build_tf2

else 

    # display warning message
    #
    echo -e "\n################## BUILDING THE GAME: ##################\n"
    echo -e "1.) To start BUILD ALL press (1)\n2.) To RESET SRC, press (2)\n\nWARNING: If you RESET SRC, you will have all Projects regenerated. This is not recommended, as it will 100% break the build on this branch. This is only recommended if you want to start with the original state of the SRC + have all VPC projects generated as originally Valve intended.\n\n"
    read -n 1 should_build_tf

    if [[ "$should_build_tf" == "1" ]]; then

        # build
        #
        build_tf2

    elif [[ "$should_build_tf" == "2" ]]; then

        # regen?
        #
        echo -e "Are you sure? (y/n) \n"
        read -n 1 user_vpc_regen_projects

        if [[ "$user_vpc_regen_projects" == "y" ]]; then

            echo -e "\n################## BUILDING VALVE PROJECT GENERATOR: ##################\n"
            vpc_projgen

        else 

            echo "Canceled."

        fi

    else

        echo "Exiting..."

    fi

fi