package main

import (
    "log"
    "net/http"
)

func apiRsp (w http.ResponseWriter, r *http.Request) {
    w.WriteHeader(http.StatusOK)
    w.Header().Set("Content-Type", "application/json")
    w.Write([] byte ( `{"Status":"Healthy"}` ))
}

func main() {
    http.HandleFunc( "/api/status", apiRsp )
    log.Fatal(http.ListenAndServe( ":80", nil ))
}


