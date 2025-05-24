# storescp

This is an implementation of the DICOM Storage SCP (C-STORE),
which can be used for receiving DICOM files from other DICOM devices.

## Usage

```none
storescp [-p tcp_port] [-o dicom_storage_dir] [OPTIONS]
```

Note that this tool is not necessarily a drop-in replacement
for `storescp` tools in other DICOM software projects.
Run `storescp --help` for more details.

