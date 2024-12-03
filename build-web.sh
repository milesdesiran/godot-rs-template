#!/bin/sh
EMSCRIPTEN_VER=3.1.73

# install emscripten
git clone https://github.com/emscripten-core/emsdk.git --depth 1
cd emsdk
./emsdk install $EMSCRIPTEN_VER
./emsdk activate $EMSCRIPTEN_VER
source ./emsdk_env.sh

cd ../rust/

# install/update nightly
rustup toolchain install nightly
rustup component add rust-src --toolchain nightly
rustup target add wasm32-unknown-emscripten --toolchain nightly

# build it
cargo +nightly build -Zbuild-std --target wasm32-unknown-emscripten

