# Python

## Library

#### hashlib
```
import hashlib

req = 'hello'
h = hashlib.md5()
h.update(req)
rsp = h.hexdigest()
```

#### urlparse
```
import urlparse

http_url = 'https://cn.bing.com/search?q=github&qs=n&form=QBLHCN'
url = urlparse.urlparse(http_url)
# url.path
# url.query
# url.hostname
```
