package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello Go App! This is my first deploy!")
	})

	http.ListenAndServe(":8080", nil)
}
