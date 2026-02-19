### 1 Program Entry

- Main: `package main; func main() {}`
- Import: `import "fmt"` or `import ( "fmt"; "os" )`

### 2 Variables

- Decl: `var x int` or `var x int = 10`
- Short: `x := 10` (inside func)
- Const: `const Pi = 3.14`
- Types: `bool`, `string`, `int`, `float64`, `byte`, `rune`

### 3 Pointers

- Decl: `var p *int`
- Address: `p := &i`
- Deref: `*p = 21`
- New: `p := new(int)`

### 4 Functions

- Define: `func add(a, b int) int { return a+b }`
- Multiple return: `func swap(a, b int) (int, int)`
- Named return: `func split(sum int) (x, y int)`

### 5 Conditions

- If: `if x > 0 { ... } else { ... }`
- Short stmt: `if v := math.Pow(x, n); v < lim { ... }`
- Switch: `switch os { case "mac": ... default: ... }`

### 6 Loops

- For: `for i := 0; i < 10; i++ { ... }`
- While-like: `for sum < 1000 { ... }`
- Range: `for i, v := range arr { ... }`

### 7 Arrays & Slices

- Array: `var a [10]int` (fixed size)
- Slice: `s := []int{1, 2, 3}`
- Make: `s := make([]int, len, cap)`
- Append: `s = append(s, 1)`
- Sub-slice: `s[1:4]`

### 8 Strings

- Import: `import "strings"`
- Len: `len(s)` (bytes), `utf8.RuneCountInString(s)`
- Split: `strings.Split(s, "")`
- Join: `strings.Join(arr, "")`
- Contains: `strings.Contains(s, sub)`
- Builder: `var sb strings.Builder; sb.WriteString(s)`

### 9 Conversions

- Import: `import "strconv"`
- Str->Int: `i, _ := strconv.Atoi("123")`
- Int->Str: `s := strconv.Itoa(123)`
- Str->[]byte: `[]byte("abc")`
- []byte->Str: `string([]byte{97})`
- Str->[]rune: `[]rune("abc")`
- Int->Float: `float64(i)`

### 10 Maps

- Init: `m := make(map[string]int)`
- Set/Get: `m["k"] = 1`; `v := m["k"]`
- Check: `v, ok := m["k"]`
- Delete: `delete(m, "k")`

### 11 Structs

- Define: `type Point struct { X, Y int }`
- Init: `p := Point{1, 2}` or `p := Point{X: 1}`
- Pointer: `p := &Point{1, 2}`

### 12 Linked List

- Define: `type Node struct { Val int; Next *Node }`
- Init: `head := &Node{Val: 1}`
- Traverse: `for curr := head; curr != nil; curr = curr.Next {}`

### 13 Interfaces

- Define: `type Abser interface { Abs() float64 }`
- Implement: Implicit, just define method
- Type assertion: `v, ok := i.(T)`

### 14 Error Handling

- Define: `type error interface { Error() string }`
- Check: `if err != nil { return err }`
- New: `errors.New("msg")`

### 15 Sorting & Math

- Sort: `sort.Ints(s)`, `sort.Strings(s)`
- Custom: `sort.Slice(s, func(i, j int) bool { return s[i] < s[j] })`
- Math: `math.Max(x, y)`, `math.Abs(x)`
- MaxInt: `math.MaxInt64`

### 16 Bitwise

- Ops: `&`, `|`, `^` (XOR), `&^` (clear), `<<`, `>>`

### 17 JSON

- Marshal: `json.Marshal(v)`
- Unmarshal: `json.Unmarshal(data, &v)`
- Tags: `json:"name"`

### 18 Time

- Now: `time.Now()`
- Format: `t.Format("2006-01-02")`
- Diff: `t2.Sub(t1)`

### 19 File I/O

- Read: `os.ReadFile("file")`
- Write: `os.WriteFile("file", data, 0644)`

### 20 HTTP

- Get: `http.Get(url)`
- Server: `http.ListenAndServe(":8080", nil)`

### 21 Context

- Background: `context.Background()`
- Timeout: `context.WithTimeout(ctx, time.Second)`

### 22 Regex

- Compile: `regexp.MustCompile(pattern)`
- Match: `re.MatchString(s)`

### 23 Testing

- Func: `func TestX(t *testing.T)`
- Run: `go test -v`

### 24 Concurrency

- Go: `go func() {}()`
- Chan: `ch := make(chan int)`
- Send/Recv: `ch <- v`, `v := <-ch`
- WaitGroup: `var wg sync.WaitGroup; wg.Add(1); wg.Done(); wg.Wait()`

### 25 Modules

- Init: `go mod init name`
- Tidy: `go mod tidy`
