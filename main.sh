#!/bin/bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

grep=""
dry_run="0"

log() {
    if [[ $dry_run == "1" ]]; then
        echo "[DRY_RUN]: $1"
    else
        echo "$1"
    fi
}

setup_dir=`find $script_dir/setup -mindepth 1 -maxdepth 1 -executable`
echo $setup_dir

for s in $setup_dir; do
    log "running setup script: $s"

    $s
done
