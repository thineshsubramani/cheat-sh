### 1 Program Entry
- Main: `int main() { return 0; }`
- IO: `std::cout << "Hello" << std::endl;`
- Include: `#include <iostream>`

### 2 Namespaces
- Use: `using namespace std;`
- Declare: `namespace MySpace { ... }`
- Access: `MySpace::func();`

### 3 Classes (OOP)
- Define: `class Dog { public: void bark(); };`
- Access: `public:`, `private:`, `protected:`
- Constructor: `Dog() { ... }`
- Destructor: `~Dog() { ... }`
- New: `Dog* d = new Dog();`
- Delete: `delete d;`

### 4 References
- Declare: `int& ref = x;`
- Param: `void func(int& x)` (Pass by reference)
- Const Ref: `void func(const int& x)` (Read-only ref)

### 5 Strings (std::string)
- Include: `#include <string>`
- Create: `std::string s = "Hello";`
- Concat: `s + " World"`
- Length: `s.length()` or `s.size()`
- Substr: `s.substr(0, 5)`
- Find: `s.find("el")`

### 6 Vectors (Dynamic Arrays)
- Include: `#include <vector>`
- Create: `std::vector<int> v = {1, 2, 3};`
- Push: `v.push_back(4);`
- Access: `v[0]` or `v.at(0)`
- Size: `v.size()`
- Iter: `for(int i : v) { ... }`

### 7 Maps (Dictionary)
- Include: `#include <map>`
- Create: `std::map<string, int> m;`
- Insert: `m["key"] = 10;`
- Find: `if (m.find("key") != m.end()) ...`
- Iter: `for(auto const& [k, v] : m) ...`

### 8 Linked List
- Include: `#include <list>` (Doubly) or `#include <forward_list>` (Singly)
- Create: `std::list<int> l = {1, 2, 3};`
- Push: `l.push_back(4); l.push_front(0);`
- Traverse: `for(int x : l) { ... }`

### 9 Stack
- Include: `#include <stack>`
- Array (Vec): `std::vector<int> s; s.push_back(1); s.pop_back();`
- Adapter: `std::stack<int> s; s.push(1); s.pop();`

### 10 Queue
- Include: `#include <queue>`
- Array (Deque): `std::deque<int> q; q.push_back(1); q.pop_front();`
- Adapter: `std::queue<int> q; q.push(1); q.pop();`

### 11 File I/O
- Include: `#include <fstream>`
- Write: `std::ofstream f("file.txt"); f << "text";`
- Read: `std::ifstream f("file.txt"); f >> var;`
- GetLine: `std::getline(f, line);`

### 12 Templates
- Function: `template <typename T> T add(T a, T b) { ... }`
- Class: `template <class T> class Box { T data; };`

### 13 Lambda Expressions
- Syntax: `capture { body }`
- Example: `auto add =  { return a + b; };`
- Capture: `[=]` (all by value), `[&]` (all by ref)

### 14 Smart Pointers
- Include: `#include <memory>`
- Unique: `std::unique_ptr<int> p = std::make_unique<int>(10);`
- Shared: `std::shared_ptr<int> p = std::make_shared<int>(10);`
- Move: `std::move(p)` (Transfer ownership)

### 15 Exception Handling
- Try: `try { ... }`
- Catch: `catch (const std::exception& e) { ... }`
- Throw: `throw std::runtime_error("Error");`

### 16 Inheritance
- Base: `class Animal { virtual void sound(); };`
- Derived: `class Dog : public Animal { void sound() override; };`
- Virtual: `virtual` (Enable polymorphism)

### 17 STL Algorithms
- Include: `#include <algorithm>`
- Sort: `std::sort(v.begin(), v.end());`
- Find: `std::find(v.begin(), v.end(), 5);`
- Max: `std::max(a, b);`
- Min: `std::min(a, b);`

### 18 Type Casting
- Static: `static_cast<int>(3.14)`
- Dynamic: `dynamic_cast<Derived*>(basePtr)`
- Const: `const_cast<int*>(constPtr)`
- Reinterpret: `reinterpret_cast<int*>(ptr)`

### 19 Preprocessor
- Define: `#define PI 3.14`
- Ifdef: `#ifdef DEBUG ... #endif`
- Pragma: `#pragma once`

### 20 Threading
- Include: `#include <thread>`
- Create: `std::thread t(func, args);`
- Join: `t.join();`
- Mutex: `std::mutex m; m.lock(); m.unlock();`
- Lock Guard: `std::lock_guard<std::mutex> lock(m);`

### 21 Chrono (Time)
- Include: `#include <chrono>`
- Now: `auto now = std::chrono::system_clock::now();`
- Duration: `std::chrono::seconds(1)`

### 22 Optional & Variant
- Optional: `std::optional<int> o;`
- Has Value: `if (o.has_value()) ...`
- Variant: `std::variant<int, float> v;`
- Get: `std::get<int>(v)`

### 23 Filesystem (C++17)
- Include: `#include <filesystem>`
- Exists: `std::filesystem::exists("file.txt")`
- Copy: `std::filesystem::copy("src", "dest")`
- Iterate: `for(auto& p: std::filesystem::directory_iterator("."))`