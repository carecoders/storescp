# storescp

This is an implementation of the DICOM Storage SCP (C-STORE),
which can be used for receiving DICOM files from other DICOM devices.

Built on top of `storescp` from https://github.com/Enet4/dicom-rs. 
Added the ability to anonymize incoming DICOM files before saving them to disk.

## Usage

```bash
$ storescp --help
DICOM C-STORE SCP

Usage: storescp [OPTIONS]

Options:
  -v, --verbose
          Verbose mode
      --calling-ae-title <CALLING_AE_TITLE>
          Calling Application Entity title [default: STORE-SCP]
  -s, --strict
          Enforce max pdu length
      --uncompressed-only
          Only accept native/uncompressed transfer syntaxes
      --promiscuous
          Accept unknown SOP classes
  -m, --max-pdu-length <MAX_PDU_LENGTH>
          Maximum PDU length [default: 16384]
  -o <OUT_DIR>
          Output directory for incoming objects [default: .]
  -p <PORT>
          Which port to listen on [default: 11111]
  -n, --non-blocking
          Run in non-blocking mode (spins up an async task to handle each incoming stream)
  -a, --anonymize
          Anonymize incoming objects
  -h, --help
          Print help
  -V, --version
          Print version
```

Note that this tool is not necessarily a drop-in replacement
for `storescp` tools in other DICOM software projects.
