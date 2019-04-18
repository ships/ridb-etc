#!/bin/bash -eux

this_dir="$(cd "$(dirname $0)" && pwd )"

clean() {
  rm -rf src docs Cargo.* ridb-formatted.yaml
}

generate() {
  openapi-generator generate \
    --skip-validate-spec \
    -i "$this_dir/ridb-etc.yaml" \
    -o "$this_dir" \
    -g rust \
    -D packageName=ridb-client-extras \
    --library=reqwest \
    $@
}

pushd "$this_dir"
  clean
  generate
popd
