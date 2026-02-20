### 1 Basics
- Log: `console.log("Hello");`
- Variables: `let x = 1; const y = 2; var z = 3;`
- Types: String, Number, Boolean, Null, Undefined, Symbol, Object

### 2 Functions
- Declaration: `function add(a, b) { return a + b; }`
- Expression: `const add = function(a, b) { return a + b; }`
- Arrow: `const add = (a, b) => a + b;`

### 3 Strings
- Template: `` `Hello ${name}` ``
- Length: `s.length`
- Methods: `split()`, `trim()`, `slice()`, `replace()`, `toUpperCase()`

### 4 Arrays
- Create: `const arr = [1, 2, 3];`
- Add: `push()`, `unshift()`
- Remove: `pop()`, `shift()`
- Methods: `map()`, `filter()`, `reduce()`, `find()`, `includes()`
- Spread: `const newArr = [...arr, 4, 5];`

### 5 Objects
- Create: `const obj = { key: "value" };`
- Access: `obj.key` or `obj["key"]`
- Keys/Values: `Object.keys(obj)`, `Object.values(obj)`
- Destructure: `const { key } = obj;`
- Spread: `const newObj = { ...obj, newKey: 1 };`

### 6 Async / Await
- Promise: `new Promise((resolve, reject) => ...)`
- Async: `async function fetchData() { ... }`
- Await: `const data = await fetch(url);`
- Try/Catch: `try { ... } catch (err) { ... }`

### 7 DOM Manipulation
- Select: `document.querySelector(".class")`
- Select All: `document.querySelectorAll("div")`
- Text: `el.textContent = "Hello";`
- Style: `el.style.color = "red";`
- Event: `el.addEventListener("click", () => ...)`

### 8 JSON
- Parse: `JSON.parse(str)`
- Stringify: `JSON.stringify(obj)`

### 9 Classes
- Define: `class User { constructor(n) { this.name = n; } }`
- Method: `sayHi() { ... }`
- Extend: `class Admin extends User { ... }`

### 10 Modules (ES6)
- Export: `export const x = 1;`
- Default: `export default function() { ... }`
- Import: `import { x } from './file';`
- Import Default: `import func from './file';`

### 11 Error Handling
- Throw: `throw new Error("Msg");`
- Try: `try { ... } catch (e) { ... } finally { ... }`

### 12 Math
- Random: `Math.random()`
- Floor: `Math.floor(x)`
- Ceil: `Math.ceil(x)`
- Max: `Math.max(a, b)`

### 13 Dates
- Now: `new Date()`
- Parse: `Date.parse("2023-01-01")`
- Methods: `getDate()`, `getMonth()`, `getFullYear()`

### 14 Storage
- Local: `localStorage.setItem('key', 'val')`
- Get: `localStorage.getItem('key')`
- Session: `sessionStorage.setItem('key', 'val')`

### 15 Timers
- Timeout: `setTimeout(() => ..., 1000)`
- Interval: `setInterval(() => ..., 1000)`
- Clear: `clearTimeout(id)`, `clearInterval(id)`

### 16 Regex
- Literal: `/pattern/flags`
- Test: `/abc/.test("abcde")`
- Match: `str.match(/abc/)`
- Replace: `str.replace(/abc/, "xyz")`

### 17 Sets & Maps
- Set: `const s = new Set([1, 2, 2]);` (Unique)
- Map: `const m = new Map(); m.set('k', 'v');`

### 18 Fetch API
- Get: `fetch(url).then(res => res.json())`
- Post: `fetch(url, { method: 'POST', body: ... })`