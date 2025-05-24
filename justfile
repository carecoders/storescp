build:
    cargo build --release

serve:
    ./target/release/storescp -n -v -o ./out

dump:
    dcmdump out/`ls out | head -n1`
