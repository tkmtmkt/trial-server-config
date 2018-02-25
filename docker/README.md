docker環境で動作確認を行う
--------------------------

### コンテナ作成

```sh
$ docker build --rm -t docker-ssh:6.8 .
```

### コンテナ実行

```sh
$ docker-compose up -d
```

```sh
$ docker-compose exec sysman bash
$ su - setup
```

### 参考

動作確認済みのバージョン

```sh
$ docker version

Client:
 Version:	17.12.0-ce
 API version:	1.35
 Go version:	go1.9.2
 Git commit:	c97c6d6
 Built:	Wed Dec 27 20:11:19 2017
 OS/Arch:	linux/amd64

Server:
 Engine:
  Version:	17.12.0-ce
  API version:	1.35 (minimum version 1.12)
  Go version:	go1.9.2
  Git commit:	c97c6d6
  Built:	Wed Dec 27 20:09:53 2017
  OS/Arch:	linux/amd64
  Experimental:	false
```
```sh
$ docker-compose version

docker-compose version 1.18.0, build 8dd22a9
docker-py version: 2.6.1
CPython version: 2.7.13
OpenSSL version: OpenSSL 1.0.1t  3 May 2016
```

