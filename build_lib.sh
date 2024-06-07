# bitmap.a
#
cd tf2_src/bitmap
make -f bitmap_linux32.mak rebuild

# choreoobjects.a
#
cd ../choreoobjects
make -f choreoobjects_linux32.mak rebuild

# dmxloader.a
#
cd ../dmxloader
make -f dmxloader_linux32.mak rebuild

# mathlib.a
#
cd ../mathlib
make -f mathlib_linux32.mak rebuild

# particles.a
#
cd ../particles
make -f particles_linux32.mak rebuild

# replay_common.a
#
cd ../replay/common
make -f replay_common_linux32.mak rebuild

# replay.a
#
cd ../
make -f replay_linux32.mak rebuild

# tier1.a
#
cd ../tier1
make -f tier1_linux32.mak rebuild

# tier2.a
#
cd ../tier2
make -f tier2_linux32.mak rebuild

# tier3.a
#
cd ../tier3
make -f tier3_linux32.mak rebuild

# matsys.a
#
cd ../vgui2/matsys_controls
make -f matsys_controls_linux32.mak rebuild

# vgui_controls.a
#
cd ../vgui2/vgui_controls
make -f vgui_controls_linux32.mak rebuild

# vtf.a
#
cd ../../vtf
make -f vtf_linux32.mak rebuild

