# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## userテーブル

| column             | type   | option                    |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| blogname           | string | null: false               |

### Association
has_many :blogs
has_many :comments

## Commentsテーブル

| column  | type       | option                         |
| ------- | ---------- | ------------------------------ |
| text    | text       |                                |
| user    | references | null: false, foreign_key: true |
| blog    | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :blog

## blogsテーブル

| column  | type       | option                         |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| article | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association
belong_to :user

## アプリケーション名

Tagebuch

## アプリケーション概要

ブログ投稿アプリケーション

## URL

https://tagebuch-32118.herokuapp.com/

## テスト用アカウント

email: test@test.com  
password: 1qaz2wsx
