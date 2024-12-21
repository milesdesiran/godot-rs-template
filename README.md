# What

A template for a godot-rust project. Only Unix-compatible at the moment, but if you're using Rust, you're _probably_ also on Linux to begin with. I'll make Windows scripts when I feel like it or if someone wants to PR it (does Windows have a `sed`?)

# How

Clone it, then run `init.sh`. `init.sh` takes 1 argument, which is the name of your project. So `./template.sh DodgeTheCreeps`.

Then, `cd` into the `rust/` directory and `cargo build` it.

Next, open the `project.godot` file in any Godot version 4.1+. It'll complain about an empty `project.godot` but that keeps this template somewhat version-agnostic. You should be good to go after that.

`build-web.sh` does what it sounds like. It will grab and install emscripten and the nightly toolchain for you too. If you don't care about web, you can ignore this script.

# Why

[The setup steps](https://godot-rust.github.io/book/intro/setup.html) [are all pretty](https://godot-rust.github.io/book/intro/hello-world.html) [much the same](https://godot-rust.github.io/book/toolchain/export-web.html) every time.

Also godot-rust has web export but C# doesn't yet, and I hate dynamically-typed languages.

# Extra Steps

You do still need to [configure the export template](https://godot-rust.github.io/book/toolchain/export-web.html#godot-editor-setup). If you're doing web single-threaded export, [remove this line from the Cargo config](/rust/.cargo/config.toml#L4C1-L4C32).
