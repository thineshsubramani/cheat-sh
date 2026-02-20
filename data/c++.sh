### 1 Program Entry
int main() { return 0; }      // Main
std::cout << "Hello" << std::endl; // IO
#include <iostream>           // Include

### 2 Namespaces
using namespace std;          // Use
namespace MySpace { ... }     // Declare
MySpace::func();              // Access

### 3 Classes (OOP)
class Dog { public: void bark(); }; // Define
public: private: protected:   // Access
Dog() { ... }                 // Constructor
~Dog() { ... }                // Destructor
Dog* d = new Dog();           // New
delete d;                     // Delete

### 4 References
int& ref = x;                 // Declare
void func(int& x)             // Param (Pass by reference)
void func(const int& x)       // Const Ref (Read-only ref)

### 5 Strings (std::string)
#include <string>             // Include
std::string s = "Hello";      // Create
s + " World"                  // Concat
s.length()                    // Length (or s.size())
s.substr(0, 5)                // Substr
s.find("el")                  // Find

### 6 Vectors (Dynamic Arrays)
#include <vector>             // Include
std::vector<int> v = {1, 2, 3}; // Create
v.push_back(4);               // Push
v[0]                          // Access (or v.at(0))
v.size()                      // Size
for(int i : v) { ... }        // Iter

### 7 Maps (Dictionary)
#include <map>                // Include
std::map<string, int> m;      // Create
m["key"] = 10;                // Insert
if (m.find("key") != m.end()) ... // Find
for(auto const& [k, v] : m) ... // Iter

### 8 File I/O
#include <fstream>            // Include
std::ofstream f("file.txt"); f << "text"; // Write
std::ifstream f("file.txt"); f >> var; // Read
std::getline(f, line);        // GetLine

### 9 Templates
template <typename T> T add(T a, T b) { ... } // Function
template <class T> class Box { T data; }; // Class

### 10 Lambda Expressions
capture { body }              // Syntax
auto add = [] (int a, int b) { return a + b; }; // Example
[=]                           // Capture (all by value)
[&]                           // Capture (all by ref)

### 11 Smart Pointers
#include <memory>             // Include
std::unique_ptr<int> p = std::make_unique<int>(10); // Unique
std::shared_ptr<int> p = std::make_shared<int>(10); // Shared
std::move(p)                  // Move (Transfer ownership)

### 12 Exception Handling
try { ... }                   // Try
catch (const std::exception& e) { ... } // Catch
throw std::runtime_error("Error"); // Throw

### 13 Inheritance
class Animal { virtual void sound(); }; // Base
class Dog : public Animal { void sound() override; }; // Derived
virtual                       // Virtual (Enable polymorphism)

### 14 STL Algorithms
#include <algorithm>          // Include
std::sort(v.begin(), v.end()); // Sort
std::find(v.begin(), v.end(), 5); // Find
std::max(a, b);               // Max
std::min(a, b);               // Min

### 15 Type Casting
static_cast<int>(3.14)        // Static
dynamic_cast<Derived*>(basePtr) // Dynamic
const_cast<int*>(constPtr)    // Const
reinterpret_cast<int*>(ptr)   // Reinterpret

### 16 Preprocessor
#define PI 3.14               // Define
#ifdef DEBUG ... #endif       // Ifdef
#pragma once                  // Pragma

### 17 Threading
#include <thread>             // Include
std::thread t(func, args);    // Create
t.join();                     // Join
std::mutex m; m.lock(); m.unlock(); // Mutex
std::lock_guard<std::mutex> lock(m); // Lock Guard

### 18 Chrono (Time)
#include <chrono>             // Include
auto now = std::chrono::system_clock::now(); // Now
std::chrono::seconds(1)       // Duration

### 19 Optional & Variant
std::optional<int> o;         // Optional
if (o.has_value()) ...        // Has Value
std::variant<int, float> v;   // Variant
std::get<int>(v)              // Get

### 20 Filesystem (C++17)
#include <filesystem>         // Include
std::filesystem::exists("file.txt") // Exists
std::filesystem::copy("src", "dest") // Copy
for(auto& p: std::filesystem::directory_iterator(".")) // Iterate