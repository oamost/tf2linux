|                |                                                                               |
|-----------------------------------|----------------------------------------------------------------------------------------------|
| **tf2linux**                      | project root                                                                                 |
| ├── **build.log**                 | text file containing latest `projgen` run results                                            |
| ├── **`projgen.sh`**              | script for building vpc and generating projects from scratch                                 |
| ├── **game**                      | binary root                                                                                  |
| │  &emsp; ├── **build**                 | build output that will be copied into `pre_jungleinferno_demos`                              |
| │  &emsp; └── **tf**                    | tf2 root                                                                                     |
| │       &emsp;&emsp;&emsp;├── **pre_jungleinferno_demos** | `cp -R ~/.local/share/Steam/steamapps/common/Team\ Fortress\ 2 ~/tf2linux/game/tf/pre_jungleinferno_demos`|
| │       &emsp;&emsp;&emsp;├── **resource**          | vpc dependencies                                                                             |
| │       &emsp;&emsp;&emsp;└── **scripts**           | vpc dependencies                                                                             |
| ├── **readme.md**                 | this documentation                                                                           |
| └── **tf2_src**                   | source code                                                                                  |


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

~~`vpc` rework started~~ \
~~`game` project generation started~~ \
~~resolving vpc failed messages~~ \
`client` build started

