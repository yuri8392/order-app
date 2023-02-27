
# アプリケーション名
Order App

# アプリケーション概要
発注物件の進捗を管理し、発注済み未完了物件の住所と未発注物件の住所を比較し効率的な発注を行うことができる。

# URL
http://52.198.130.67

# テスト用アカウント 
・Basic認証パスワード：admin
・Basic認証ID：2222
・管理権限者メールアドレス：admin@user
・管理権限者パスワード：admin1
・テストユーザーメールアドレス：test@user
・テストユーザーパスワード：123456

# 利用方法
## 発注管理
1.トップページのヘッダーから発注済み一覧を表示し遅延物件を確認する
2.トップページのヘッダーから未発注物件を確認する

## 業者管理
1.トップページのヘッダーから業者登録を行う
2.トップページのヘッダーから業者一覧を表示する

## メモ管理
1.トップページのヘッダーメモ管理からトップページに表示するメモを作成する
2.メモ登録者に限りトップページからメモの編集と削除ができる

# アプリケーションを作成した背景
実務で業者に対して全国の物件の調査発注を行っていた時に思いついたアプリ。

その業務で課題に感じていたことは、発注後未完了の物件があっても毎週五月雨式に発注を行い、進捗管理ができていないこと、業者が納期を守れないことだった。

そこで、業者に納期が守られない理由をヒアリングしたところ、遠方の物件が多く移動時間交通費の関係で数がまとまってから作業を行いたいという意見が上がった。その為GoogleMapを見ながら手動で発注物件を選定していたところを、API連携で効率的な発注物件を抽出できる業務アプリケーションを開発することにした。

受発注を行うシステムは既にあるため、そのシステムから発注物件をダウンロードし、order-appに登録することを想定し、seedで物件一覧と発注物件は読み込んでいる。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/12mUmXy1OOovkxrJ8fVpqVtcQO2olVZ-m6qJ8mCSMbJM/edit#gid=982722306)

# 実装予定の機能
未発注物件をマップにピン表示させる機能を実装中。
今後はそのピン表示した物件と業者のキャパシティを加味した効率的な発注物件をCSVで吐き出せる機能を実装予定。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/becbfeae5516af05e200c7f2458d556e.png)](https://gyazo.com/becbfeae5516af05e200c7f2458d556e)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/6832b45098a5f041a21a186c2ed41c8c.png)](https://gyazo.com/6832b45098a5f041a21a186c2ed41c8c)

# 開発環境
・フロントエンド  
・バックエンド  
・インフラ  
・テスト  
・テキストエディタ  
・タスク管理

# 工夫したポイント
業務アプリのため画面はシンプルにし、項目毎にジョブのリストをまとめ、またどのページからも作業を行いたいページを選択できるようにした。

発注済み一覧では遅延している物件が目立つように遅延日数の表示を赤字にした。