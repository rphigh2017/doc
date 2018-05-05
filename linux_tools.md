# Linux Tools

[TOC]

#### ab
```bash
ab -c $threadnum -n $totalreq $http_url
```

#### awk
```bash
cat d1 | awk '{print "del "$1}' | redis-cli -h $host -p $port
```

#### crontab
```bash
*/5 * * * * $bin 2>&1 > /dev/null & 
```

#### curl
```bash
# GET
curl -H "Host:$host" --referer "ptag=baidu" $url
# POST
curl -v -d "k1=v1&k2=v2&..." -H "Accept-Encoding: gzip, deflate" --compressed "http://$host/$cginame"
```

#### go
```bash
go test -bench=. closure_test.go
go test -bench=. -cpuprofile cpu.prof
go tool pprof unitest.test cpu.prof
GODEBUG=gctrace=1 ./testgo
```

#### gor
https://githup.com/buger/go/wiki
```bash
./gor --input-raw :80 --output-stdout --http-allow-url /$cginame --http-allow-method GET --input-raw-track-response
```

### jq
https://githup.com/stedolan/jq/tree/master/src

#### rsync
```bash
rsync -avP $user@$host:$path ./
```

#### scp
```bash
scp $file1 $user@$host#$port:$path
```

#### sed
```bash
sed "s/^\[2016-01-01 10:[0-1][0-9].*key=\([0-9a-zA-Z]\+-videofilelist\).*/\1/g"
$1 | awk 'length($0)==10 {print $0}' | sort | uniq
```

#### ssdb
http://ssdb.io/docs/zh_ch/redis-to-ssdb.html
