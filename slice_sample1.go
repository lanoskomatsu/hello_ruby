package main

import "fmt"

func main() {
        lenght := 5
        capacity := 10
        array := make([]int, lenght, capacity)

        fmt.Printf("初期の長さ          -> %d\n", len(array))
        fmt.Printf("初期の容量          -> %d\n", cap(array))
}
