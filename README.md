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

python仮想環境を有効化する。

```sh
$ source python/airflow/bin/activate
```

playbookを実行する。

```sh
$ ansible-playbook site.xml -i production
```
