### 1 Program Entry
- Main: `if __name__ == "__main__": main()`
- Print: `print("Hello World")`
- Input: `name = input("Enter name: ")`

### 2 Variables & Types
- Dynamic: `x = 10` (No type decl)
- Strings: `s = "text"` or `s = 'text'`
- Booleans: `True`, `False`
- None: `x = None`
- Type check: `type(x)` or `isinstance(x, int)`

### 3 Strings
- F-String: `f"Hello {name}"`
- Slice: `s[1:4]`, `s[::-1]` (reverse)
- Methods: `s.lower()`, `s.strip()`, `s.split(",")`
- Join: `",".join(list)`
- Len: `len(s)`

### 4 Lists
- Create: `l = [1, 2, 3]`
- Append: `l.append(4)`
- Insert: `l.insert(0, 5)`
- Pop: `x = l.pop()`
- Sort: `l.sort()` or `sorted(l)`
- Slice: `l[start:end:step]`

### 5 Dictionaries
- Create: `d = {"k": "v"}`
- Get: `d["k"]` or `d.get("k", default)`
- Set: `d["k"] = "v2"`
- Keys/Vals: `d.keys()`, `d.values()`, `d.items()`
- Delete: `del d["k"]`

### 6 Tuples & Sets
- Tuple: `t = (1, 2)` (Immutable)
- Set: `s = {1, 2, 3}` (Unique)
- Add (Set): `s.add(4)`
- Operations: `s1 | s2` (union), `s1 & s2` (intersect)

### 7 Conditionals
- If: `if x > 0: ...`
- Elif: `elif x < 0: ...`
- Else: `else: ...`
- Ternary: `x = 1 if condition else 0`

### 8 Loops
- For: `for i in range(5): ...`
- While: `while x < 10: ...`
- Break/Continue: `break`, `continue`
- Enumerate: `for i, v in enumerate(list): ...`
- Zip: `for a, b in zip(l1, l2): ...`

### 9 Functions
- Define: `def add(a, b): return a + b`
- Default args: `def func(a=1): ...`
- Args: `def func(*args, **kwargs): ...`
- Docstring: `"""Description"""`

### 10 Classes
- Define: `class Dog:`
- Init: `def __init__(self, name): self.name = name`
- Method: `def bark(self): ...`
- Instance: `d = Dog("Buddy")`

### 11 Inheritance
- Define: `class Puppy(Dog):`
- Super: `super().__init__(name)`
- Override: `def bark(self): ...`

### 12 Modules
- Import: `import math`
- From: `from math import sqrt`
- Alias: `import pandas as pd`
- Install: `pip install requests`

### 13 File I/O
- Read: `with open("f.txt", "r") as f: data = f.read()`
- Write: `with open("f.txt", "w") as f: f.write("hi")`
- Lines: `lines = f.readlines()`
- Append: `mode="a"`

### 14 Error Handling
- Try/Except: `try: ... except ValueError as e: ...`
- Finally: `finally: ...` (Always runs)
- Raise: `raise Exception("Error")`

### 15 List Comprehensions
- List: `[x**2 for x in range(10)]`
- Filter: `[x for x in l if x > 5]`
- Dict: `{k: v for k, v in l}`
- Set: `{x for x in l}`

### 16 Lambdas & Map
- Lambda: `add = lambda x, y: x + y`
- Map: `list(map(lambda x: x*2, l))`
- Filter: `list(filter(lambda x: x > 0, l))`

### 17 Virtual Env
- Create: `python -m venv venv`
- Activate (Unix): `source venv/bin/activate`
- Activate (Win): `venv\Scripts\activate`
- Deactivate: `deactivate`

### 18 Pip
- Install: `pip install pkg`
- Freeze: `pip freeze > requirements.txt`
- Install Req: `pip install -r requirements.txt`
- Upgrade: `pip install --upgrade pkg`

### 19 Decorators
- Define: `def my_decorator(func): ...`
- Apply: `@my_decorator`
- Wrapper: `def wrapper(): func()`

### 20 Generators
- Yield: `yield x`
- Usage: `def gen(): yield 1; yield 2`
- Next: `next(g)`

### 21 Context Managers
- Define: `class MyContext: __enter__, __exit__`
- Library: `from contextlib import contextmanager`
- Usage: `with MyContext() as c: ...`

### 22 JSON
- Import: `import json`
- Parse: `d = json.loads(json_str)`
- Stringify: `s = json.dumps(d, indent=2)`
- File: `json.dump(d, f)`

### 23 Date & Time
- Import: `from datetime import datetime, timedelta`
- Now: `now = datetime.now()`
- Format: `now.strftime("%Y-%m-%d")`
- Parse: `datetime.strptime("2023-01-01", "%Y-%m-%d")`

### 24 Regex
- Import: `import re`
- Match: `re.match(r"^\d+", s)`
- Search: `re.search(r"pattern", s)`
- FindAll: `re.findall(r"\d+", s)`
- Sub: `re.sub(r"pattern", "repl", s)`

### 25 Type Hinting
- Syntax: `def add(x: int, y: int) -> int:`
- List: `List[int]` (pre-3.9) or `list[int]` (3.9+)
- Optional: `Optional[str]`
- Union: `Union[int, float]` or `int | float`