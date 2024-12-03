#!/bin/sh

sed -i s/{YourCrate}/$1/g godot/rust.gdextension
sed -i s/{YourCrate}/$1/g rust/Cargo.toml

