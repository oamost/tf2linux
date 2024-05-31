### project structure

**tf2linux** \
**├── readme.md**&emsp;&emsp; \
**├── bin**&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;download location of tf2's `pre_jungleinferno_demos` beta option obtainable with steam client \
**└── tf2_src**&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; source dir for building binaries into **./bin/build**

### scope

1. `vpc`:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;.o&emsp;(projgen)
2. `client`:&emsp;&emsp;&emsp;&emsp;&emsp;.so&emsp;(tf2)
3. `server`:&emsp;&emsp;&emsp;&emsp;&emsp;.so&emsp;(tf2)
4. `engine`:&emsp;&emsp;&emsp;&emsp;&emsp;.so&emsp;(source engine)
5. `launcher`:&emsp;&emsp;&emsp;&emsp;.o&emsp;(executable)

### aim

- to make build process work for each scope
- to automate retrieval of 3rd parties and libraries
- to create a build workflow in cloud
- to create a script that integrates build artifacts into **./bin**

- ...to ultimately enable a 1 click debug experience for tf2

### forked from

https://github.com/OthmanAba/TeamFortress2.git

### status

`vpc` rework started

