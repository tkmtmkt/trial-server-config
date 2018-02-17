study-ruby-serverspec
=====================

準備
----

オンライン環境でgemをインストールする。

```sh
$ bundle init
$ cat <<'EOS' >> Gemfile
gem 'rake'
gem 'pry'
gem 'serverspec'
EOS
$ bundle install --path=vendor/bundle
```

インストールされたgemをローカル用に保存する。

```sh
$ bundle package
```

cacheに保存されたgemからgemをインストールする。

```sh
$ bundle install --path=vendor/bundle --local
```

bundleで管理しているgemのコマンドスタブ作成

```sh
$ bundle binstubs rake pry serverspec
```

手順
----

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

テストを実行する。

```sh
$ bin/rake
```
