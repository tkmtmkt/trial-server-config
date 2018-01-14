study-ansible
=============

環境設定
--------

```sh
$ python -m venv python-ansible
$ cd python-ansible
$ source bin/activate
$ pip install -r requirements.txt
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
