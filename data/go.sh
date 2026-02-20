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
- Else If: `if x > 0 { ... } else if x < 0 { ... } else { ... }`
- Short stmt: `if v := math.Pow(x, n); v < lim { ... }`
- Switch: `switch os { case "mac": ... default: ... }`

### 6 Loops

- For: `for i := 0; i < 10; i++ { ... }`
- While: `for i < 1000 { ... }`
- Infinite: `for { ... }`
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

### 9 Maps

- Init: `m := make(map[string]int)`
- Set/Get: `m["k"] = 1`; `v := m["k"]`
- Check: `v, ok := m["k"]`
- Delete: `delete(m, "k")`

### 10 String Conversions

- Import: `import "strconv"`
- Str->Int: `i, _ := strconv.Atoi("123")`
- Int->Str: `s := strconv.Itoa(123)`
- Str->Bytes: `b := []byte(s)`
- Bytes->Str: `s := string(b)`
- Str->Runes: `r := []rune(s)`
- Runes->Str: `s := string(r)`
- Runes->Char: `fmt.Printf("%c", r)`
- Char->Rune: `r := 'a'`
- Str->Slice: `strs := strings.Split(s, "")`
- Slice->Str: `s := strings.Join(strs, "")`

### 11 Structs

- Define: `type Point struct { X, Y int }`
- Init: `p := Point{1, 2}` or `p := Point{X: 1}`
- Pointer: `p := &Point{1, 2}`

### 12 Linked List

- Define: `type Node struct { Val int; Next *Node }`
- Init: `head := &Node{Val: 1}`
- Traverse: `for curr := head; curr != nil; curr = curr.Next {}`

### 13 Stack

- Slice: `var s []int; s = append(s, 1); top := s[len(s)-1]; s = s[:len(s)-1]`
- List: `type Stack struct { top *Node }; func (s *Stack) Push(v int) { s.top = &Node{Val: v, Next: s.top} }`
- Pop: `func (s *Stack) Pop() int { v := s.top.Val; s.top = s.top.Next; return v }`

### 14 Queue

- Slice: `var q []int; q = append(q, 1); front := q[0]; q = q[1:]`
- List: `type Queue struct { head, tail *Node }; func (q *Queue) Enq(v int) { n := &Node{Val: v}; if q.tail != nil { q.tail.Next = n } else { q.head = n }; q.tail = n }`
- Deq: `func (q *Queue) Deq() int { v := q.head.Val; q.head = q.head.Next; if q.head == nil { q.tail = nil }; return v }`

### 15 Interfaces

- Define: `type Abser interface { Abs() float64 }`
- Implement: Implicit, just define method
- Type assertion: `v, ok := i.(T)`

### 16 Error Handling

- Define: `type error interface { Error() string }`
- Check: `if err != nil { return err }`
- New: `errors.New("msg")`

### 17 Sorting & Math

- Sort: `sort.Ints(s)`, `sort.Strings(s)`
- Custom: `sort.Slice(s, func(i, j int) bool { return s[i] < s[j] })`
- Math: `math.Max(x, y)`, `math.Abs(x)`
- MaxInt: `math.MaxInt64`

### 18 Bitwise

- Ops: `&`, `|`, `^` (XOR), `&^` (clear), `<<`, `>>`

### 19 JSON

- Marshal: `json.Marshal(v)`
- Unmarshal: `json.Unmarshal(data, &v)`
- Tags: `json:"name"`

### 20 Time

- Now: `time.Now()`
- Format: `t.Format("2006-01-02")`
- Diff: `t2.Sub(t1)`

### 21 File I/O

- Read: `os.ReadFile("file")`
- Write: `os.WriteFile("file", data, 0644)`

### 22 HTTP

- Get: `http.Get(url)`
- Server: `http.ListenAndServe(":8080", nil)`

### 23 Context

- Background: `context.Background()`
- Timeout: `context.WithTimeout(ctx, time.Second)`

### 24 Regex

- Compile: `regexp.MustCompile(pattern)`
- Match: `re.MatchString(s)`

### 25 Testing

- Func: `func TestX(t *testing.T)`
- Run: `go test -v`

### 26 Concurrency

- Go: `go func() {}()`
- Chan: `ch := make(chan int)`
- Send/Recv: `ch <- v`, `v := <-ch`
- WaitGroup: `var wg sync.WaitGroup; wg.Add(1); wg.Done(); wg.Wait()`

### 27 Modules

- Init: `go mod init name`
- Tidy: `go mod tidy`
