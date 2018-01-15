study-ansible
=============

環境設定
--------

```sh
$ python -m venv python-ansible
$ source python-ansible/bin/activate
$ pip install -r requirements-setup.txt

# パッケージをダウンロードする
$ pip freeze > requirements.txt
$ pip wheel -r requirements.txt -w python-pkgs

# ダウンロードパッケージをインストールする
$ pip install --no-deps --no-index -r requirements.txt -f python-pkgs
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
