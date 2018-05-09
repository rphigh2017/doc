package main

import (
	"encoding/json"
	"encoding/xml"
	"flag"
	"fmt"
	"html/template"
	"log"
	"net"
	"net/http"
	"os"
	"strconv"
)

type option struct {
	ip     string
	port   string
	log    string
	public string
	// TODO:
}

var _option option

func init() {
	_eth := flag.String("eth", "eth1", "")
	_port := flag.String("port", ":8080", "")
	_log := flag.String("log", "./work.log", "")
	_public := flag.String("public", "./public", "")
	// TODO:
	flag.Parse()
	eth1, _ := net.InterfaceByName(*_eth)
	addrs, _ := eth1.Addrs()
	tcpAddr := &net.TCPAddr{IP: addrs[0].(*net.IPNet).IP}
	_option.ip = tcpAddr.IP.String()
	_option.port = *_port
	_option.log = *_log
	_option.public = *_public
	// TODO:

	fmt.Println(_option)

	log.SetFlags(log.LstdFlags | log.Llongfile)
	fd, _ := os.OpenFile(_option.log, os.O_CREATE|os.O_WRONLY|os.O_APPEND, os.ModePerm)
	log.SetOutput(fd)
	log.Println(_option)
}

func main() {
	fmt.Println("start to listen " + _option.port)
	log.Println("start to listen " + _option.port)

	http.HandleFunc("/test", test)
	http.HandleFunc("/template", templateTest)
	http.HandleFunc("/handle", HandleTest)
	http.Handle("/", http.FileServer(http.Dir(_option.public)))

	err := http.ListenAndServe(_option.ip+_option.port, nil)
	fmt.Println(err)
	log.Fatal(err)
}

func test(w http.ResponseWriter, req *http.Request) {
	w.Write([]byte("Hello world!"))
}

func templateTest(w http.ResponseWriter, req *http.Request) {
	t, _ := template.ParseFiles("template.html")
	t.Execute(w, req)
}

type HttpHandler interface {
	Init(req *http.Request) interface{}
	Handle(req *http.Request) interface{}
}

func DoHandle(h HttpHandler, w http.ResponseWriter, req *http.Request) {
	indent, _ := strconv.ParseInt(req.FormValue("indent"), 10, 32)
	otype := req.FormValue("otype")

	rsp := h.Init(req)
	if rsp != nil {
	} else {
		rsp = h.Handle(req)
	}

	var body []byte
	switch {
	case otype == "json" && indent == 1:
		body, _ = json.MarshalIndent(rsp, "", "  ")
	case otype == "json":
		body, _ = json.Marshal(rsp)
	case otype == "xml" && indent == 1:
		body, _ = xml.MarshalIndent(rsp, "", "  ")
	case otype == "xml":
		fallthrough
	default:
		body, _ = xml.Marshal(rsp)
	}

	w.Write(body)
}

// TODO:
type Test struct {
	M_i       string
	M_o       string
	M_cgiName string
}

func (this *Test) Init(req *http.Request) interface{} {
	this.M_cgiName = req.URL.Path[1:]
	this.M_i = "Hello"
	return nil
}
func (this *Test) Handle(req *http.Request) interface{} {
	this.M_o = this.M_i + " World"
	return this.M_o
}
func HandleTest(w http.ResponseWriter, req *http.Request) {
	this := &Test{}
	DoHandle(this, w, req)
}
