# Password Generator

Simple and fast CLI password generator made in Rust. This tool is built with a convenient installer for any standard Linux distro. The `main.rs` and `Cargo.toml` files are included if you would like to build this tool for other architectures; however, doing so would require [installing Rust](https://www.rust-lang.org/tools/install) on your system.

## Usage

### Linux

The convenient Linux installer moves the executable to `/usr/bin` so that it can be used anywhere on the system with
```
passgen [OPTION]... [LENGTH]
```

Example usages:
```
passgen -ul 12
passgen -luns 20
```

### Windows

(Must be built and renamed - see below)<br>
From within it's parent directory:
```
.\passgen.exe [OPTION]... [LENGTH]
```

Example usages:
```
.\passgen.exe -ul 12
.\passgen.exe -luns 20
```

### MacOS and non-standard Linux distros

(Must be built and renamed - see below)<br>
From within it's parent directory:
```
./passgen [OPTION]... [LENGTH]
```

Example usages:
```
./passgen -ul 12
./passgen -luns 20
```

## Installation

Clone the repository from GitHub, then descend into it:
```
git clone https://github.com/asmith-dev/password_generator.git
cd password_generator
```

### Install on Linux

Make the `install.sh` script executable, then execute it as root:
```
chmod +x install.sh
sudo ./install.sh
```

### Build for other OS

On your system, after having [installed Rust](https://www.rust-lang.org/tools/install), run from within the `password_generator` directory:
```
cargo build
```

This will build a script in `target/debug` called `password_generator`. From there, you can make this script executable, rename it to `passgen` or `passgen.exe`, and then move it to a convenient location within your filesystem. 