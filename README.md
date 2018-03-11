study-server-config
===================

構成
----

```
├─README.md
├─ansible.cfg
├─bin/
│  ├─make-archive.sh       アーカイブ作成
│  └─run-notebook.sh       jupyter notebook起動
├─roles/
└─python/
    ├─bashrc
    ├─make-venv.sh          python仮想環境作成
    ├─install.sh            インストール
    ├─offline-install.sh    オフラインインストール
    ├─requirements.in.txt   インストール時に指定するpythonパッケージ一覧
    ├─requirements.txt      オフラインインストール時に指定するpythonパッケージ一覧
    ├─shell.sh              python仮想環境を有効にした状態のシェル起動
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
