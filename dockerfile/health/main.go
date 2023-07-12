package main

import (
	"fmt"
	"net/http"
)

var counter = 0

func main() {

}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

func HealthCheck(w http.ResponseWriter, r *http.Request) {
	counter = counter + 1
	if counter > 5 {
		w.WriteHeader(500)
		fmt.Fprintf(w, "KO")
	} else {
		fmt.Fprintf(w, "OK")
	}
}
