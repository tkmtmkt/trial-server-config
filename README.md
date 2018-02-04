study-python-ansible
====================

環境設定
--------

オンライン環境でインストールし、wheelパッケージをダウンロードする。

```sh
$ ./python/install.sh
```

オフライン環境でwheelパッケージからインストールする。

```sh
$ ./python/offline-install.sh
```


Role取得
--------

```sh
$ ansible-galaxy install -r requirements.yml -p roles/
```


実行
----

作業用シェルを起動する。

```sh
$ ./python/shell.sh
```

playbookを実行する。

```sh
$ ansible-playbook site.xml -i production
```

テスト
------

```sh
$ docker-compose up --build -d
```

```sh
$ docker-compose exec ansible /bin/bash
```

```sh
$ useradd -m -s /bin/bash setup
$ echo 'setup:manager' | chpasswd
$ su - setup
$ cp -rp /ansible ~
```

```sh
$ cd ~/ansible
$ ./python/install.sh
$ ./python/shell.sh
```

```sh
$ ssh-keygen -
$ ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
$ cp roles/common/files/config ~/.ssh/config
$ chmod 0600 ~/.ssh/config
$ ansible all -i production -m user -a 'name=setup' -u root -k
```
