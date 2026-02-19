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
