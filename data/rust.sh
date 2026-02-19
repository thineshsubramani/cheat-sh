### 1 Cargo / Tooling

- Build: `cargo build --release`
- Run tests: `cargo test`
- Add dependency: edit `Cargo.toml` and `cargo build`

### 2 Ownership & Borrowing

- Example: `let s = String::from("hello");` moves ownership.
- Borrow: `fn len(s: &String) -> usize { s.len() }`

### 3 Common commands

- Format: `cargo fmt`
- Clippy: `cargo clippy`
