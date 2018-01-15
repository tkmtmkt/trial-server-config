study-ansible
=============

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

```sh
$ ansible-playbook site.xml -i production
```
