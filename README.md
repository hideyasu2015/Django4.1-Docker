# Django の Docker での開発環境になります。

ご自由にお使いください。

## 起動方法

- docker アプリを起動する。

- ターミナルでフォルダに移動し

```
docker-compose up

```

- 仮想環境下にて、`back_code` へ移動する
- Django プロジェクトを作成する
- 注意 このリポジトリにはすでに app_config というプロジェクトが作成されています。

```
django startproject [your_project_nme] .
```

- Django のアプリを作成する

```
$ django-admin startapp app_accounts

`settings.py`の`INSTALLED_APPS`に `app_accounts`を足す。

マイグレーション
$ python manage.py migrate

サーバー起動
$ python manage.py runserver 0.0.0.0:8000
```

ロケットが飛んでいれば環境構築成功！

---

次回起動時からは `docker-compose.yml` の admin_user などに値を入れておく

## 入っている主なパッケージ

- Firebase
- GCP
- Numpy
- Node.js ver18.4
- DRF
