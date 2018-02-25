study-server-config
===================

構成
----

```
├─README.md
├─ansible.cfg
├─Gemfile
├─Gemfile.lock
├─Rakefile
├─bin/
│  ├─make-archive.sh       アーカイブ作成
│  ├─run-notebook.sh       jupyter notebook起動
│  ├─serverspec-init
│  ├─rake
│  └─pry
├─roles/
├─spec/
├─python/
│  ├─bashrc
│  ├─make-venv.sh          python仮想環境作成
│  ├─install.sh            インストール
│  ├─offline-install.sh    オフラインインストール
│  ├─requirements.in.txt   インストール時に指定するpythonパッケージ一覧
│  ├─requirements.txt      オフラインインストール時に指定するpythonパッケージ一覧
│  ├─shell.sh              python仮想環境を有効にした状態のシェル起動
│  ├─venv/                 python仮想環境
│  └─wheels/               オフラインインストール用pythonパッケージ
└─vendor/
    ├─bundle/               ruby環境(gemインストール領域)
    └─cache/                オフラインインストール用ruby gems
```


環境設定
--------

### オンライン環境の設定

ansible, jupyter

```sh
$ ./python/install.sh
```

serverspec

```sh
$ bundle install --path=vendor/bundle

# オフライン用にパッケージをダウンロード
$ bundle package

# bundleで管理しているgemのコマンドスタブ作成
$ bundle binstubs --force rake pry serverspec
```


### オフライン環境の設定

アーカイブを作成してオフライン環境に展開する。

```sh

$ ./bin/make-archive.sh
```

ansible, jupyter インストール

```sh
$ ./python/offline-install.sh
```

serverspec インストール

```sh
$ bundle install --path=vendor/bundle --local

# bundleで管理しているgemのコマンドスタブ作成
$ bundle binstubs --force rake pry serverspec
```


手順
----

### ansible

```sh
# 作業用シェルを起動する。
$ ./bin/shell.sh

# ユーザ設定
$ ansible all -i production -m yum -a "name=sudo" -u root -k
$ ansible all -i production -m user -a "name=setup groups=wheel" -u root -k

# playbookを実行する。
$ ansible-playbook site.yml -i production
```

### serverspec

テストを実行する。

```sh
$ bin/rake
```


参考
----

### serverspec

テストスクリプトのひな形を作成する。

```sh
$ bin/serverspec-init
```
```
Select OS type:

  1) UN*X
  2) Windows

Select number: 1

Select a backend type:

  1) SSH
  2) Exec (local)

Select number: 2
```
