# README

## api specification
### 写真の保存
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
        "taken_by": 2,
        "event_id": 1
      }
      ```
      * `people`:
        * `person_id`: faceApiから帰ってきたpersonId
        * `smile_point`: faceApiから帰ってきたhappiness値
      * `cameraman`: ログイン中のuser_id

### イベント一覧
  * request:
    * method: `POST`
    * url: `base_url/api/events`
    * header: `Content-Type: application/json`
  * response
    * body: 
      ```json
      [
        {
          "id": 1,
          "name": "人狼バンチ戦",
          "date": "2019-01"
        },
        {
          "id": 2,
          "name": "消しゴムバトルバンチ戦",
          "date": "2019-02"
        },
        {
          "id": 3,
          "name": "開発合宿バンチ戦",
          "date": "2019-03"
        }
      ]
      ```

### 採点
#### イベント
  * request:
    * method: `GET`
    * url: `base_url/api/aggregate/events/:event_id?user_id=:user_id`
  * response
    * body:
      ```json
      {
        "user_points": {
          "laugh_std": 0.4,
          "rare_encount_point": 3,
          "taken_picture_with_many_people_point": 7,
          "take_good_picture_point": 4,
          "between_product_interact_point": 8,
          "divercity_point": 7,
          "score": 6
        },
        "user_score": 6,
        "bunch_score": 6
      }
      ```

#### バンチごとの記録
  * request:
    * method: `GET`
    * url: `base_url/api/bunches/log/:user_id`
  * response
    * body:
      ```json
      {
        "bunch_score_sum": 25,
        "user_score_sum": 12,
        "bunch_scores": [
          {
            "date": "2019-01",
            "score": 12
          },
          {
            "date": "2019-02",
            "score": 13
          }
        ],
        "user_scores": [
          {
            "date": "2019-01",
            "score": 6
          },
          {
            "date": "2019-02",
            "score": 6
          }
        ]
      }
      ```

#### ユーザごとの情報
  * request:
    * method: `GET`
    * url: `base_url/api/bunches/users/:bunch_id`
  * response
    * body:
      ```json
        {
          "leader_id": 1,
          "users": [
            {
              "id": 1,
              "name": "ゼブラ",
              "product_team_name": "growlio",
              "score_sum": 12
            },
            {
              "id": 2,
              "name": "ガル",
              "product_team_name": "dAd",
              "score_sum": 13
            }
         ]
       }
      ```

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
