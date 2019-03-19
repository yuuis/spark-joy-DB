# README

## api specification
### 写真の保存
  * front(camera) → db
  * request: 
    * method: `POST`
    * url: `base_url/api/pictures`
    * header: `Content-Type: application/json`
    * body:
      ```json
      {
        "people": [
          {
            "person_id": "xxxxx",
            "smile_point": 0.6
          },
          {
            "person_id": "xxxxx",
            "smile_point": 0.9
          },
          {
            "person_id": "xxxxx",
            "smile_point": 0.3
          },
          {
            "person_id": "xxxxx",
            "smile_point": 0.7
          }
        ],
        "cameraman": 2
      }
      ```
      * `people`:
        * `person_id`: faceApiから帰ってきたpersonId
        * `smile_point`: faceApiから帰ってきたhappiness値
      * `cameraman`: ログイン中のuser_id

### 採点結果
  * front(採点結果) → db
#### バンチごと
  * request:
    * method: `GET`
    * url `base_url/api/bunchs/:bunch_id`
  * response:
    * body:
      ```json
        {
          "id": 1,
          "point": 25,
          "leader": 35
        }
      ```
      * `id`: バンチのid
      * `point`: バンチの現在の累計得点
      * `leader`: バンチのリーダー

#### ユーザごと
  * request:
    * method: `GET`
    * url `base_url/api/users/:user_id`
  * response:
    * body:
      ```json
        {
          "id": 1,
          "point": 5,
          "bunch_id": 2,
          "product_team_id": 2
        }
      ```
      * `id`: ユーザのid
      * `point`: ユーザの累計得点
      * `bunch_id`: ユーザの所属バンチのid
      * `product_team_id`: ユーザの所属チームのid

##### バンチ戦ごとの絞り込み
  * バンチごと、ユーザごと共に`event`パラメタを追加する
      * example
        * 前回バンチ戦(仮にid=4)のバンチごとの得点を取得する
          * GET: `base_url/api/bunchs/4?event=4`

### 採点リクエスト
  * db → 採点model
  * request:
    * method: `POST`
    * url: `base_url`
    * header: `Content-Type: application/json`
  * body: 
    ```json
      {
        "1": [ 1.0, 5, 15, 10, 10, 10],
        "2": [0.9, 5, 12, 10, 9, 10],
        "3": [0.8, 4, 14, 10, 10, 10],
        "4": [0.9, 5, 13, 9, 10, 10],
        "5": [0.8, 4, 12, 9, 9, 10],
        "6": [0.7, 4, 15, 9, 9, 10],
        "7": [0.8, 4, 14, 8, 9, 9],
        "8": [0.8, 4, 12, 8, 9, 9],
        "9": [0.6, 3, 13, 9, 10, 9],
        "10": [0.7, 4, 10, 7, 10, 10],
        "11": [0.7, 2, 8, 10, 10, 9],
        "12": [0.8, 3, 15, 5, 5, 7],
        "13": [0.5, 3, 7, 5, 5, 5],
        "14": [0.8, 0, 5, 10, 5, 4],
        "15": [0.1, 2, 4, 5, 10, 10],
        "16": [0.5, 5, 12, 10, 2, 2],
        "17": [0.9, 2, 11, 2, 8, 6],
        "18": [0.5, 5, 5, 0, 5, 5],
        "19": [0.3, 2, 4, 2, 3, 4],
        "20": [-0.4, 0, 2, 1, 2, 3]
      }
    ```

## how to build
  ```shell
    $ docker-compose build
    $ docker-compose run app bundle exec rails db:drop db:create db:migrate db:seed
    $ docker-compose up
  ```
