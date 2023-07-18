package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("APP_PORT")
	fmt.Println("Run in App port: " + port)
	http.HandleFunc("/", helloServer)
	http.ListenAndServe(":"+port, nil)
}

func helloServer(w http.ResponseWriter, r *http.Request) {
	mode := os.Getenv("MODE")
	response := "Hello " + mode
	fmt.Fprintf(w, response)
}
