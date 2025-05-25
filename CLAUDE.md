# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

Build the project:
```bash
cargo build --release
```

Build and run in development:
```bash
just build
just serve
```

Run the CLI:
```bash
./target/release/storescp --help
./target/release/storescp -n -v -o /path/to/output
```

Test the CLI command structure:
```bash
cargo test
```

## Architecture

This is a DICOM Storage SCP (Service Class Provider) server that accepts C-STORE operations from DICOM clients. It can operate in two modes:

- **Synchronous mode** (default): Handles one connection at a time sequentially
- **Asynchronous mode** (`-n` flag): Spawns async tasks for each incoming connection

### Core Components

- `main.rs:105-212` - Entry point with CLI argument parsing and mode selection
- `store_sync.rs` - Synchronous DICOM association handling 
- `store_async.rs` - Asynchronous DICOM association handling with tokio
- `transfer.rs` - Abstract syntax definitions for supported DICOM storage classes

### Key Architecture Notes

- Both sync and async implementations share nearly identical DICOM protocol logic
- Files are saved to the output directory using SOP Instance UID as filename with `.dcm` extension
- Supports C-ECHO (verification) and C-STORE (storage) DICOM operations
- Uses the `dicom-rs` ecosystem for DICOM protocol implementation
- Command and data PDUs are processed separately following DICOM standards
- Transfer syntax support is configurable (uncompressed-only vs all supported syntaxes)

The server creates DICOM file objects with proper file meta information and writes them to disk upon successful C-STORE operations.