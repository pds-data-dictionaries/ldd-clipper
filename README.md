# Europa Clipper mission local data dictionary

The Europa Clipper mission dictionary contains classes that describe aspects of the Clipper mission and related instruments.

## Current Source

Only one LDD source version is kept such that it can be managed by github.

- [src](src)

## Versions

A Local Data Dictionary (LDD) is built for selected versions of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatiblity of the LDD with the core information model.

## Builds

This LDD has been built for the following versions of the PDS4 information models.

- [dev](build/development)
- [builds](build)
	
# Documentation

* **User Guide:** TBD
* **Other PDS Data Dictionaries Documentation:** https://pds-data-dictionaries.github.io/

## Notes

Each build is auto-generated using Github Actions, PDS4 LDDTool, and Validate Tool.


You can manually run [LDDTool](https://nasa-pds.github.io/pds4-information-model/model-lddtool/index.html) on the IngestLDD using the following command:
```
lddtool -lpsnJ PDS4_CLIPPER_IngestLDD.xml
```


# Contribute

Have a bug or feature request? Create one in the [PDS4 Issue Repo](https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo/issues/new/choose).


# Support

See the [PDS Data Dictionaries Support page](https://pds-data-dictionaries.github.io/support/contribute.html) for more Support information.
