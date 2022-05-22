
# アプリケーション名 
 SAKUTOMO

## アプリケーション概要
  このアプリケーションでは作業時間と休憩時間、作業評価を可視化することで自分にあった作業時間と休憩時間を知ることができます。

## テスト用アカウント
  Basic認証ID  : admin

  Basic認証パスワード : 2222

  メールアドレス : a@a1

  パスワード    : aaaaaa1

## 利用方法
  1.トップページのヘッダーよりユーザー新規登録を行います。

  2.トップページの「作業を開始」ボタンをクリックします。

  3.休憩する際は「ちょっと休憩する」ボタンをクリックします。

  4.休憩を終える際は「作業に戻る」ボタンをクリックします。

  5.作業を終わる際は「今日の作業を終わる」ボタンをクリックします。

  6.作業評価を1つ選んでいただき「完了」ボタンをクリックします。

  7.最後に「ホームに戻る」ボタンをクリックすると直近の作業時間と休憩時間、作業評価のグラフが更新されます。

## アプリケーションを作成した背景
TECH CAMP受講時に2時間から4時間程度休憩なしで作業することが幾度かありましたが作業時間と進み具合があまり比例しないことに気がつきました。

そのため、いろいろ調べていくと作業を効率的に行うためには、しっかり休憩をすることが大切だと知りました。

休憩時間と作業時間、作業の自己評価が目で見てわかるようになれば自分はこれだけやったぞ。今日は休憩が長かったな。などの反省ができるようになると思いSAKUTOMOを作成しました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1m0Z1K6bF622fvpp1LLUezCmd-UW-zbb-F9rjfyR_7IY/edit#gid=982722306


## 実装した機能についての画像やGIFおよびその説明
ログイン前
[![Image from Gyazo](https://i.gyazo.com/ee0cbec0bd38d6372fe07e7ce2c81108.png)](https://gyazo.com/ee0cbec0bd38d6372fe07e7ce2c81108)

新規登録
[![Image from Gyazo](https://i.gyazo.com/3670c87ce95944e3915f56bb71efca17.gif)](https://gyazo.com/3670c87ce95944e3915f56bb71efca17)

ログイン後
[![Image from Gyazo](https://i.gyazo.com/81349f9309a4fd4fccaec682fa973add.png)](https://gyazo.com/81349f9309a4fd4fccaec682fa973add)

作業開始→休憩まで
[![Image from Gyazo](https://i.gyazo.com/c323beb9546388400c5284e6e6595c62.gif)](https://gyazo.com/c323beb9546388400c5284e6e6595c62)

休憩→作業終了まで
[![Image from Gyazo](https://i.gyazo.com/c5a7b474cbe7f04eeae9d827f6b539e2.gif)](https://gyazo.com/c5a7b474cbe7f04eeae9d827f6b539e2)

## 実装予定の機能
・作業時間のアラート機能
・BGM選択機能追加
・休憩方法を投稿、閲覧できる機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/50796d85ddd5b06311d030d3c445f296.png)](https://gyazo.com/50796d85ddd5b06311d030d3c445f296)

## 遷移図
[![Image from Gyazo](https://i.gyazo.com/0f8f898605ed956fab8080c910f8d57a.png)](https://gyazo.com/0f8f898605ed956fab8080c910f8d57a)


## 開発環境
・ フロントエンド : HTML,CSS

・ バックエンド  : Ruby,Javascript

・ フレームワーク : Ruby on Rails

・ データベース : MySQL

・ 外部サービス : GitHub,Heroku

## ローカルでの動作方法
以下のコマンドを順に実行します。
% git clone https://github.com/pamapama1/sakutomo.git
% cd <作成したいディレクトリ>
% bundle install
% yarn install

## 工夫したポイント
できるだけシンプルかつユーザがしなければいけない作業を減らすことでUIを意識した作りになっています。

具体的には作業開始時間や評価などは入力することなくボタン一つで動作するようになっているため、作業負荷を最小限に抑えられます。

また、chart.gemを使用することで作業時間、休憩時間、作業評価をひと目見てわかるようになっているため、作業時間が長くなった際に自分の努力が目で見てわかるためモチベーションの向上につながりやすくなります。
