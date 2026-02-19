### 1 Packages

- Initialize module: `go mod init example.com/project`
- Add dependency: `go get github.com/some/pkg`

### 2 Concurrency

- Goroutine: `go func() { /* ... */ }()`
- Channel example:

```
ch := make(chan int)
go func(){ ch <- 1 }()
x := <-ch
```

### 3 Loops

- `for i := 0; i < 10; i++ { fmt.Println(i) }`
- Range loop over slice/map:

```
for i, v := range items {
    fmt.Println(i, v)
}
```

### 4 Slices

- Make: `s := make([]int, 0, 10)`
- Append: `s = append(s, 1)`

### 5 Interfaces

- Define: `type Reader interface { Read(p []byte) (n int, err error) }`

### 6 Error handling

- Idiomatic check: `if err != nil { return err }`

### 7 Maps

- Init: `m := make(map[string]int)`
- Set/Get: `m["k"] = 1`; `v := m["k"]`
- Check exists: `v, ok := m["k"]`
- Delete: `delete(m, "k")`

### 8 Structs

- Define: `type User struct { Name string; Age int }`
- Init: `u := User{Name: "Bob", Age: 20}`

### 9 JSON

- Import: `import "encoding/json"`
- Marshal: `b, err := json.Marshal(v)`
- Unmarshal: `err := json.Unmarshal(b, &v)`

### 10 Testing

- File: `*_test.go`
- Func: `func TestName(t *testing.T)`
- Run: `go test ./...`

### 11 Time

- Now: `t := time.Now()`
- Format: `t.Format(time.RFC3339)`
- Parse: `t, _ := time.Parse(layout, str)`

### 12 Strings

- Import: `import "strings"`
- Split: `parts := strings.Split(s, sep)`
- Join: `str := strings.Join(arr, sep)`
- Contains: `strings.Contains(s, substr)`
- Replace: `strings.ReplaceAll(s, old, new)`
- Trim: `strings.TrimSpace(s)`

### 13 Conversions

- Import: `import "strconv"`
- Str -> Int: `i, _ := strconv.Atoi("123")`
- Int -> Str: `s := strconv.Itoa(123)`
- Str -> []byte: `b := []byte(s)`
- []byte -> Str: `s := string(b)`
- Str -> []rune: `r := []rune(s)` (mutable chars)

### 14 Sorting & Math

- Import: `import ("sort"; "math")`
- Sort Ints: `sort.Ints(nums)`
- Sort Strings: `sort.Strings(strs)`
- Custom: `sort.Slice(s, func(i, j int) bool { return s[i] < s[j] })`
- Math: `math.Max(f1, f2)`, `math.Abs(f)`

### 15 File I/O

- Import: `import "os"`
- Read all: `b, err := os.ReadFile("file.txt")`
- Write all: `err := os.WriteFile("file.txt", []byte("data"), 0644)`
- Open: `f, err := os.Open("file.txt"); defer f.Close()`

### 16 HTTP

- Import: `import ("net/http"; "io")`
- Get: `resp, err := http.Get("http://example.com")`
- Body: `defer resp.Body.Close(); b, _ := io.ReadAll(resp.Body)`
- Server: `http.ListenAndServe(":8080", handler)`

### 17 Context

- Import: `import "context"`
- Base: `ctx := context.Background()`
- Timeout: `ctx, cancel := context.WithTimeout(ctx, 5*time.Second); defer cancel()`
- Check: `select { case <-ctx.Done(): return }`

### 18 Regex

- Import: `import "regexp"`
- Compile: `re := regexp.MustCompile(\`[a-z]+\`)`
- Match: `matched := re.MatchString("foo")`
- Find: `s := re.FindString("foo123")`

### 19 Bitwise

- AND: `x & y`  OR: `x | y`  XOR: `x ^ y`
- NOT: `^x`
- Shift: `x << 1` (left), `x >> 1` (right)
- Clear: `x &^ y` (bit clear)
