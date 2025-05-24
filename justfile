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

store:
    time storescu --scan-directories --recurse -aet STORESCU -aec STORE-SCP localhost 11111 /Users/jsmits/d/data/nlst/dicom/203087-cleaned/T2 

dump:
    dcmdump out/`ls out | head -n1`
