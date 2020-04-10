# Europa Clipper mission local data dictionary

The Europa Clipper mission dictionary contains classes that describe aspects of the Clipper mission and related instruments.

## Versions (Source)

[prototype src](src/)
<!-- - [1.0.0.0](src/1.0.0.0) -->

## Builds

A Local Data Dictionary (LDD) is built for each version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatibility of the LDD with the core information model.

This LDD has been built for the following versions of the PDS4 information model.

<!--
[prototype build](build/)
- [1.12.0.0](build/1.12.0.0) -->

## Notes

Each build is generating using the [lddtool](https://pds.nasa.gov/pds4/software/ldd/) specific to a version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/). The build command used is:

```
lddtool -lpMsnJ ldd-file.xml
```
