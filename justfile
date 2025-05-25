build:
    cargo build --release

serve:
    ./target/release/storescp -n -v -o ./out

serve_anon:
    ./target/release/storescp -a -n -v -o ./out

serve_sync:
    ./target/release/storescp -v -o ./out

serve_sync_anon:
    ./target/release/storescp -a -v -o ./out
