# bitmap.a
#
cd tf2_src/bitmap
make -f bitmap_linux32.mak rebuild
mv bitmap.a ../lib/common/linux32

# choreoobjects.a
#
cd ../choreoobjects
make -f choreoobjects_linux32.mak rebuild
mv choreoobjects.a ../lib/common/linux32

# dmxloader.a
#
cd ../dmxloader
make -f dmxloader_linux32.mak rebuild
mv dmxloader.a ../lib/common/linux32

# mathlib.a
#
cd ../mathlib
make -f mathlib_linux32.mak rebuild
mv mathlib.a ../lib/common/linux32

# particles.a
#
cd ../particles
make -f particles_linux32.mak rebuild
mv particles.a ../lib/common/linux32

# replay_common.a
#
cd ../replay/common
make -f replay_common_linux32.mak rebuild
mv replay_common.a ../../lib/common/linux32

# replay.a
#
cd ../
make -f replay_linux32.mak rebuild
mv replay.a ../lib/common/linux32

# tier1.a
#
cd ../tier1
make -f tier1_linux32.mak rebuild
mv tier1.a ../lib/common/linux32

# tier2.a
#
cd ../tier2
make -f tier2_linux32.mak rebuild
mv tier2.a ../lib/common/linux32

# tier3.a
#
cd ../tier3
make -f tier3_linux32.mak rebuild
mv tier3.a ../lib/common/linux32

# matsys.a
#
cd ../vgui2/matsys_controls
make -f matsys_controls_linux32.mak rebuild
mv matsys.a ../../lib/common/linux32

# vgui_controls.a
#
cd ../vgui2/vgui_controls
make -f vgui_controls_linux32.mak rebuild
mv vgui_controls.a ../../lib/common/linux32

# vtf.a
#
cd ../../vtf
make -f vtf_linux32.mak rebuild
mv vtf.a ../../lib/common/linux32

