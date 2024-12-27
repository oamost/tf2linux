## Goal

The goal of this fork is to be able to build Team Fortress 2 on Linux systems with a single command. 

I've made this for fun and self-education purposes. This fork does not include the compilation of other Source games \
like CSGO, HL2, or Portal. 

Feel free to create your own fork if needed.

## How to use it

1. Make sure to have Team Fortress 2 installed into your Steam Library (betas: pre_jungleinferno_demos" (App ID: 440, Build ID: 2119861))
2. `git clone https://github.com/oamost/tf2linux`
3. `cd tf2linux && sudo chmod +x tf2linux32.sh`
4. `./tf2linux32.sh --yes-to-all` - this will build all targets from zero. Use this without the switch if you want to build targets individually.
5. Wait for the build to finish.
6. Replace the installed game files with the built output artifacts (`.so`'s and `.map`'s). 
7. Launch the game from the terminal by using the command below (assuming you are in the install directory)\
`tf2.sh -steam ./hl2_linux -game tf -insecure -novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars -noquicktime` 
8. Attach a debugger (`gdb`) to the running process by creating a configuration for it in vscode. The process you need to attach your
debugger to is called `hl2_linux`. 

\
Note:  

1. You must manually copy build output files (`.so` and `.map` files) to the relevant target locations. 
2. This is the x86-only (32-bit) codebase version of TF2. No x64 (64-bits), sorry. 
3. There are a couple of issues with the current build version, these will be fixed with future commits. 

Feel free to open relevant requests and relevant issues with clearly describing the subject.

## Checklist

This list stands for what has been done so far and what needs to be done: \
\
`checks`: ~~done~~ \
`vpc`: ~~done~~ \
`game`: ~~done~~ \
`client`: ~~done~~ \
`server`: ~~done~~ \
`engine`: ~~done~~ \
`togl`: ~~done~~ \
`launcher`: ~~done~~ \
`gameui`: ~~done~~ \
\
`vphysics`: todo \
`gdb-vscode-configuration`: todo \
`locally-built-artifact-deployment`: todo \
`gameitem fixes`: todo \
`githubworkflow` : todo \
`codebase-compilable-percentage-estimation` : todo \
`screenshots+youtube video` : todo



