### 1 Program Entry
- Main: `fn main() {}`
- Print: `println!("Hello, world!");`
- Import: `use std::io;`

### 2 Variables & Constants
- Immutable: `let x = 5;`
- Mutable: `let mut x = 5;`
- Const: `const MAX: u32 = 100;`
- Static: `static HELLO: &str = "Hello";`
- Shadowing: `let x = x + 1;`

### 3 Data Types
- Integers: `i8`, `u8`, `i32`, `u32`, `i64`, `isize`
- Floats: `f32`, `f64`
- Bool: `bool` (true, false)
- Char: `char` ('a', 'ℤ')
- Tuple: `let tup: (i32, f64, u8) = (500, 6.4, 1);`
- Array: `let a = [1, 2, 3, 4, 5];`

### 4 Functions
- Define: `fn add(x: i32, y: i32) -> i32 { x + y }`
- Return: Implicit return (last expression without ;)
- Statement: `let y = 6;` (semicolon required)

### 5 Control Flow
- If: `if number < 5 { ... } else { ... }`
- Let If: `let number = if condition { 5 } else { 6 };`
- Loop: `loop { println!("again!"); break; }`
- While: `while number != 0 { ... }`
- For: `for element in a.iter() { ... }`
- Range: `for number in (1..4).rev() { ... }`

### 6 Ownership
- Move: `let s1 = String::from("hello"); let s2 = s1;`
- Clone: `let s2 = s1.clone();`
- Copy: Integers, bools, chars implement Copy trait

### 7 References & Borrowing
- Immutable: `&s1` (Multiple allowed)
- Mutable: `&mut s1` (Only one allowed)
- Deref: `*y`
- Slices: `&s[0..5]`

### 8 Structs
- Define: `struct User { username: String, active: bool }`
- Init: `let user1 = User { username: String::from("some"), active: true };`
- Update: `let user2 = User { email: String::from("..."), ..user1 };`
- Tuple Struct: `struct Color(i32, i32, i32);`
- Method: `impl User { fn new() -> User { ... } }`

### 9 Enums & Match
- Define: `enum IpAddrKind { V4, V6 }`
- Data: `enum Message { Write(String), Move { x: i32, y: i32 } }`
- Match: `match coin { Coin::Penny => 1, _ => 0 }`
- If Let: `if let Some(3) = some_u8_value { ... }`

### 10 Vectors
- Create: `let v: Vec<i32> = Vec::new();`
- Macro: `let v = vec![1, 2, 3];`
- Push: `v.push(5);`
- Get: `&v[2]` or `v.get(2)` (Option)
- Iter: `for i in &v { println!("{}", i); }`

### 11 Strings
- Create: `let mut s = String::new();`
- From literal: `let s = "initial".to_string();`
- Push str: `s.push_str("bar");`
- Push char: `s.push('l');`
- Format: `let s = format!("{}-{}-{}", s1, s2, s3);`
- Slice: `&s[0..5]`

### 12 HashMaps
- Use: `use std::collections::HashMap;`
- Create: `let mut scores = HashMap::new();`
- Insert: `scores.insert(String::from("Blue"), 10);`
- Access: `scores.get("Blue")` -> `Option<&V>`
- Entry: `scores.entry("Yellow").or_insert(50);`

### 13 Linked List
- Use: `use std::collections::LinkedList;`
- Create: `let mut list = LinkedList::new();`
- Push: `list.push_back(1);`
- Iter: `for val in list.iter() { ... }`

### 14 Stack
- Vec (Array): `let mut s = Vec::new();`
- Vec Ops: `s.push(1); s.pop();`
- LinkedList: `let mut s = LinkedList::new();`
- List Ops: `s.push_front(1); s.pop_front();`

### 15 Queue
- VecDeque: `use std::collections::VecDeque;`
- VecDeque Ops: `let mut q = VecDeque::new(); q.push_back(1); q.pop_front();`
- LinkedList: `let mut q = LinkedList::new();`
- List Ops: `q.push_back(1); q.pop_front();`

### 16 Error Handling
- Panic: `panic!("crash and burn");`
- Result: `enum Result<T, E> { Ok(T), Err(E) }`
- Propagate: `File::open("hello.txt")?`
- Unwrap: `f.unwrap()`
- Expect: `f.expect("Failed to open")`

### 17 Generics
- Func: `fn largest<T>(list: &[T]) -> T { ... }`
- Struct: `struct Point<T> { x: T, y: T }`
- Enum: `enum Option<T> { Some(T), None }`

### 18 Traits
- Define: `trait Summary { fn summarize(&self) -> String; }`
- Impl: `impl Summary for NewsArticle { ... }`
- Bound: `pub fn notify<T: Summary>(item: &T) { ... }`
- Where: `where T: Display + Clone, U: Clone + Debug`

### 19 Lifetimes
- Syntax: `&'a i32`
- Func: `fn longest<'a>(x: &'a str, y: &'a str) -> &'a str`
- Struct: `struct ImportantExcerpt<'a> { part: &'a str }`
- Static: `'static` (lives for entire program duration)

### 20 Closures
- Define: `let expensive_closure = |num| { ... };`
- Type: `Fn`, `FnMut`, `FnOnce`
- Move: `let equal_to_x = move |z| z == x;`

### 21 Iterators
- Create: `let v1_iter = v1.iter();`
- Adapt: `v1.iter().map(|x| x + 1)`
- Consume: `let v2: Vec<_> = v1.iter().collect();`
- Filter: `v1.into_iter().filter(|s| s.len() > 3)`

### 22 Smart Pointers
- Box: `let b = Box::new(5);` (Heap)
- Deref: `impl Deref for MyBox<T>`
- Drop: `impl Drop for CustomSmartPointer`
- Rc: `Rc::new(...)` (Reference Counting)
- RefCell: `RefCell::new(...)` (Interior Mutability)

### 23 Concurrency
- Thread: `thread::spawn(|| { ... });`
- Join: `handle.join().unwrap();`
- Channel: `let (tx, rx) = mpsc::channel();`
- Send: `tx.send(val).unwrap();`
- Recv: `rx.recv().unwrap();`
- Mutex: `let m = Mutex::new(5);`

### 24 Macros
- Print: `println!("Hello")`
- Vector: `vec![1, 2, 3]`
- Format: `format!("Hello {}", name)`
- Panic: `panic!("error")`
- Todo: `todo!("implement later")`

### 25 Testing
- Module: `#[cfg(test)] mod tests { ... }`
- Test: `#[test] fn it_works() { ... }`
- Assert: `assert_eq!(2 + 2, 4);`
- Fail: `assert!(false, "oops");`

### 26 File I/O
- Read All: `fs::read_to_string("foo.txt")`
- Write: `fs::write("foo.txt", b"Hello")`
- Open: `let f = File::open("foo.txt")?;`
- BufReader: `let reader = BufReader::new(f);`

### 27 Cargo
- New: `cargo new my_project`
- Build: `cargo build`
- Run: `cargo run`
- Check: `cargo check`
- Test: `cargo test`
- Doc: `cargo doc --open`
