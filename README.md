trial-server-config
===================

構成
----

```
├─README.md
├─bin/
│  ├─make-archive.sh       アーカイブ作成
│  ├─run-notebook.sh       jupyter notebook起動
│  └─shell.sh              python仮想環境を有効にした状態のシェル起動
├─docker/
├─notebook/
├─playbook/
│  ├─ansible.cfg
│  ├─inventory/
│  └─roles/
└─python/
    ├─bashrc
    ├─make-venv.sh          python仮想環境作成
    ├─install.sh            インストール
    ├─offline-install.sh    オフラインインストール
    ├─requirements.in.txt   インストール時に指定するpythonパッケージ一覧
    ├─requirements.txt      オフラインインストール時に指定するpythonパッケージ一覧
    ├─venv/                 python仮想環境
    └─wheels/               オフラインインストール用pythonパッケージ
```


環境設定
--------

### オンライン環境の設定

```sh
$ ./python/install.sh
```


### オフライン環境の設定

アーカイブを作成してオフライン環境に展開する。

```sh

$ ./bin/make-archive.sh
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
$ cd playbook
$ ansible-playbook site.xml -i inventory/production.ini
```


テスト
------

```sh
$ bin/shell.sh
```

```sh
$ py.test ./test
$ py.test --connection=ansible --inventory=production ./test
```

```sh
$ ssh-keygen -
$ ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
$ cp roles/common/files/config ~/.ssh/config
$ chmod 0600 ~/.ssh/config
$ ansible all -i production -m user -a 'name=setup' -u root -k
```
