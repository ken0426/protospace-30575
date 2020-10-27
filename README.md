# ProtoSpaceのER図

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|email     |string  |not null     |
|password  |string  |not null     |
|name      |string  |not null     |
|profile   |text    |not null     |
|occupation|text    |not null     |
|position  |text    |not null     |

## prototypesテーブル

| Column   | Type       | Options     |
| -------- | -----------| ----------- |
|title     |string      |not null     |
|catch_copy|text        |not null     |
|concept   |text        |not null     |
|image     |ActibeStrage|not null     |
|user      |references  |not null     |

## commmentsテーブル

| Column   | Type       | Options     |
| -------- | -----------| ----------- |
|text      |text        |not null     |
|user      |references  |not null     |
|prototype |refernces   |not null     |