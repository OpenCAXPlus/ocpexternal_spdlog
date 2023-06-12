# spdlog for OpenCAX+ external

spdlog is a fast C++ logging library, find more [here](https://github.com/gabime/spdlog)


## Things that you need to modify

- [x] This README.md file 
- [x] The workflow yml files, change the name of workflow
- [x] The ocp.toml file
- [x] scripts/prepare.sh
- [x] scripts/install.sh
- [x] Create any new configurations build folder, and their install.sh scripts



## Things you need to check before submit PR to include this external project

- [x] after you run the prepare.sh script, is the external project's source code resides in ocp/external/external_id/version/source?
- [x] does the ocp/external/external_id/version folder also contains a ocp.toml file and any build configuration folders that you want?
- [x] if you run the ocp/external/external_id/version/configuration/install.sh script, is the build cache files put into ocp/external/external_id/version/configuration/build folder, and the install files put into ocp/external/external_id/version/configuration/install folder?

## Some rules
1. Structure of the compressed source code must be like ocp/external/external_id/version/source, where the source code resides. The ocp.toml file should be copied to ocp/external/external_id/version folder.
2. Must use tar.xz to compress the ocp folder
3. The install script must install compiled software to an install subdirectory under the configuration folder.

## Folder structure explained
- scripts, useful scripts but won't be included into the distributed compress file.
    - prepare.sh, to prepare the folder structure for external source. It must located in ocp/external/external_id/version/source
    - publish.sh, to xz compress the external source code and publish to OSS bucket. This should only to be used by the OpenCAX+ runner.
    - install.sh, 
- default, a specific build configuration folder which includes an install.sh script to implement the build. You must put any build files into a build subfolder, and all install files into the install subfolder.