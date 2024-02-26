package main

import "net/http"

func main() {
	// Create an route
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("<h1> Full Cycle </h1>"))
	})
	// Create an web server
	http.ListenAndServe(":8080", nil)
}
