# frozen_string_literal: true

# roles
Role.create(name: 'admin')
Role.create(name: 'nomal')

# product_teams
ProductTeam.create(name: 'dAd')
ProductTeam.create(name: 'unipos')
ProductTeam.create(name: 'growlio')

# users
@zebra = User.create(name: 'ゼブラ', smile_std: 0.7, birthday: Date.new(1998, 1, 1),
                     product_team_id: 3, point: 10, role_id: 2, join_date: Date.new(2018, 12, 1), person_id: 'bc488b41-ff45-466a-a1d2-1e2255f5e21e')
@gal = User.create(name: 'ガル', smile_std: 0.8, birthday: Date.new(1998, 1, 1),
                   product_team_id: 1, point: 20, role_id: 2, join_date: Date.new(2019, 1, 1), person_id: '9842d710-313b-413e-abc1-7e7acf41538d')

@ushi = User.create(name: 'うしちゃん', smile_std: 0.7, birthday: Date.new(1998, 1, 1),
                    product_team_id: 2, point: 15, role_id: 2, join_date: Date.new(2018, 8, 1), person_id: 'fdabf763-978d-4219-ab82-da4414ba936c')
@rami_chan = User.create(name: 'ラミちゃん', smile_std: 0.8, birthday: Date.new(1998, 1, 1),
                         product_team_id: 1, point: 20, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: 'b63b6347-cbfc-49f7-85cc-f44270477ee3')

@perry = User.create(name: 'ペリー', smile_std: 0.8, birthday: Date.new(1998, 1, 1),
                     product_team_id: 2, point: 15, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: '0e5586ca-d3d5-4ce7-ad31-6c28025bd1fa')
@ryuk = User.create(name: 'リューク', smile_std: 0.8, birthday: Date.new(1998, 1, 1),
                    product_team_id: 3, point: 20, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: 'd2f464fa-dd48-439d-b240-6c2cf8187571')

# bunches
Bunch.create(leader: 1)
@zebra.update(bunch_id: 1)
@gal.update(bunch_id: 1)

Bunch.create(leader: 3)
@ushi.update(bunch_id: 2)
@rami_chan.update(bunch_id: 2)

Bunch.create(leader: 5)
@perry.update(bunch_id: 3)
@ryuk.update(bunch_id: 3)

# events
Event.create(name: '人狼バンチ戦', date: Date.new(2019, 1, 1))
Event.create(name: '消しゴムバトルバンチ戦', date: Date.new(2019, 2, 1))
Event.create(name: '開発合宿バンチ戦', date: Date.new(2019, 3, 1))
