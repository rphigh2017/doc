# Linux Tools

[TOC]

#### awk
```bash
cat d1 | awk '{print "del "$1}' | redis-cli -h $host -p $port
```

#### curl
```bash
curl -H "Host:$host" $url
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
