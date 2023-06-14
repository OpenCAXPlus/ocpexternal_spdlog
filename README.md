# spdlog for OpenCAX+ external

[![spdlog Build](https://github.com/OpenCAXPlus/ocpexternal_spdlog/actions/workflows/build.yml/badge.svg)](https://github.com/OpenCAXPlus/ocpexternal_spdlog/actions/workflows/build.yml)
[![spdlog Publish](https://github.com/OpenCAXPlus/ocpexternal_spdlog/actions/workflows/publish.yml/badge.svg)](https://github.com/OpenCAXPlus/ocpexternal_spdlog/actions/workflows/publish.yml)

spdlog is a fast C++ logging library, find more [here](https://github.com/gabime/spdlog)


## Things that you need to modify

- [x] This README.md file 
- [x] The workflow yml files, change the name of workflow
- [x] The ocp.yml file
- [x] scripts/prepare.sh
- [x] scripts/install.sh
- [x] Create any new configurations build and install script in the config folder



## Things you need to check before publish the external project

- [x] run the prepare.sh script locally, is the external project's source code resides in ocp/external/external_id/version/source?
- [x] does the ocp/external/external_id/version folder also contains a ocp.yml file and any build configuration folders that you want?
- [x] run the ocp/external/external_id/version/config/$config.sh script locally, is the build cache files put into ocp/external/external_id/version/build/$config folder, and the install files put into ocp/external/external_id/version/install/$config folder?
- [x] run the External Build workflow

## Some rules
1. Structure of the compressed source code must be like ocp/external/external_id/version/source, where the source code resides. The ocp.yml file should be copied to ocp/external/external_id/version folder.
2. Must use tar.xz to compress the ocp folder
3. The install script must install compiled software to an install subdirectory under the configuration folder.

## Folder structure explained
- scripts, useful scripts but won't be included into the distributed compress file.
    - prepare.sh, to prepare the folder structure for external source. It must located in ocp/external/external_id/version/source
    - publish.sh, to xz compress the external source code and publish to OSS bucket. This should only to be used by the OpenCAX+ runner.
    - install.sh, 
- config, contains specific build configuration scripts to install different build configuration of the source code. You must put any build files into a build subfolder, and all install files into the install subfolder.