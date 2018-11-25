package main

import "fmt"

func main() {
        lenght := 5
        capacity := 10
        array := make([]int, lenght, capacity)

        fmt.Printf("初期の長さ          -> %d\n", len(array))
        fmt.Printf("初期の容量          -> %d\n", cap(array))

        fmt.Println()
        fmt.Println("容量分の各要素")
        for i := 0; i < cap(array); i++ {
                fmt.Printf("array[%d] -> %d\n", i, array[i])
        }
}
