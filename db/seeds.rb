# frozen_string_literal: true

# roles
Role.create(name: 'admin')
Role.create(name: 'nomal')

# product_teams
ProductTeam.create(name: 'dAd')
ProductTeam.create(name: 'unipos')
ProductTeam.create(name: 'growlio')

# users
@zebra = User.create(name: 'ゼブラ', smile_std: 0.4, birthday: Date.new(1998, 8, 27),
                     product_team_id: 3, point: 10, role_id: 2, join_date: Date.new(2018, 12, 1), person_id: 'bc488b41-ff45-466a-a1d2-1e2255f5e21e')
@gal = User.create(name: 'ガル', smile_std: 0.4, birthday: Date.new(1996, 4, 20),
                   product_team_id: 1, point: 20, role_id: 2, join_date: Date.new(2019, 1, 1), person_id: '9842d710-313b-413e-abc1-7e7acf41538d')

@ushi = User.create(name: 'うしちゃん', smile_std: 0.3, birthday: Date.new(1997, 8, 2),
                    product_team_id: 2, point: 15, role_id: 2, join_date: Date.new(2018, 8, 1), person_id: 'fdabf763-978d-4219-ab82-da4414ba936c')
@rami_chan = User.create(name: 'ラミちゃん', smile_std: 0.3, birthday: Date.new(1995, 5, 19),
                         product_team_id: 1, point: 20, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: 'b63b6347-cbfc-49f7-85cc-f44270477ee3')

@perry = User.create(name: 'ペリー', smile_std: 0.5, birthday: Date.new(1997, 5, 6),
                     product_team_id: 2, point: 15, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: '0e5586ca-d3d5-4ce7-ad31-6c28025bd1fa')
@ryuk = User.create(name: 'リューク', smile_std: 0.2, birthday: Date.new(1997, 1, 1),
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

Picture.create(event_id: 1, taken_by: 5) # 1
UserPicture.create(user_id: 1, picture_id: 1, smile_point: 0.8)
UserPicture.create(user_id: 2, picture_id: 1, smile_point: 0.6)
UserPicture.create(user_id: 3, picture_id: 1, smile_point: 0.9)
UserReflect.create(user_id: 1, with: 2)
UserReflect.create(user_id: 1, with: 3)
UserReflect.create(user_id: 2, with: 1)
UserReflect.create(user_id: 2, with: 3)
UserReflect.create(user_id: 3, with: 1)
UserReflect.create(user_id: 3, with: 2)

Picture.create(event_id: 1, taken_by: 1) # 2
UserPicture.create(user_id: 2, picture_id: 2, smile_point: 0.4)
UserPicture.create(user_id: 4, picture_id: 2, smile_point: 0.7)
UserReflect.create(user_id: 2, with: 4)
UserReflect.create(user_id: 4, with: 2)

Picture.create(event_id: 1, taken_by: 6) # 3
UserPicture.create(user_id: 1, picture_id: 3, smile_point: 0.8)
UserPicture.create(user_id: 2, picture_id: 3, smile_point: 0.4)
UserPicture.create(user_id: 3, picture_id: 3, smile_point: 0.6)
UserPicture.create(user_id: 4, picture_id: 3, smile_point: 0.9)
UserReflect.create(user_id: 1, with: 2)
UserReflect.create(user_id: 1, with: 3)
UserReflect.create(user_id: 1, with: 4)
UserReflect.create(user_id: 2, with: 1)
UserReflect.create(user_id: 2, with: 3)
UserReflect.create(user_id: 2, with: 4)
UserReflect.create(user_id: 3, with: 1)
UserReflect.create(user_id: 3, with: 2)
UserReflect.create(user_id: 3, with: 4)
UserReflect.create(user_id: 4, with: 1)
UserReflect.create(user_id: 4, with: 2)
UserReflect.create(user_id: 4, with: 3)

Picture.create(event_id: 1, taken_by: 3) # 4
UserPicture.create(user_id: 5, picture_id: 4, smile_point: 0.7)

Picture.create(event_id: 1, taken_by: 1) # 5
UserPicture.create(user_id: 5, picture_id: 5, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 5, smile_point: 0.7)
UserReflect.create(user_id: 5, with: 6)
UserReflect.create(user_id: 6, with: 5)

Picture.create(event_id: 1, taken_by: 3) # 5
UserPicture.create(user_id: 1, picture_id: 6, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 6, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 6, smile_point: 0.7)
UserReflect.create(user_id: 1, with: 5)
UserReflect.create(user_id: 1, with: 6)
UserReflect.create(user_id: 5, with: 1)
UserReflect.create(user_id: 5, with: 6)
UserReflect.create(user_id: 6, with: 5)
UserReflect.create(user_id: 6, with: 1)

Picture.create(event_id: 1, taken_by: 3) # 6
UserPicture.create(user_id: 2, picture_id: 6, smile_point: 0.8)
UserPicture.create(user_id: 3, picture_id: 6, smile_point: 0.6)
UserPicture.create(user_id: 5, picture_id: 6, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 6, smile_point: 0.7)
UserReflect.create(user_id: 2, with: 3)
UserReflect.create(user_id: 2, with: 5)
UserReflect.create(user_id: 2, with: 6)
UserReflect.create(user_id: 3, with: 2)
UserReflect.create(user_id: 3, with: 5)
UserReflect.create(user_id: 3, with: 6)
UserReflect.create(user_id: 5, with: 2)
UserReflect.create(user_id: 5, with: 3)
UserReflect.create(user_id: 5, with: 5)
UserReflect.create(user_id: 6, with: 2)
UserReflect.create(user_id: 6, with: 3)
UserReflect.create(user_id: 6, with: 5)

Picture.create(event_id: 1, taken_by: 5) # 7
UserPicture.create(user_id: 1, picture_id: 7, smile_point: 0.9)
UserPicture.create(user_id: 6, picture_id: 7, smile_point: 0.8)
UserReflect.create(user_id: 1, with: 6)
UserReflect.create(user_id: 6, with: 1)

Picture.create(event_id: 1, taken_by: 2) # 8
UserPicture.create(user_id: 4, picture_id: 8, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 8, smile_point: 0.6)
UserPicture.create(user_id: 6, picture_id: 8, smile_point: 0.9)
UserReflect.create(user_id: 4, with: 5)
UserReflect.create(user_id: 4, with: 6)
UserReflect.create(user_id: 5, with: 4)
UserReflect.create(user_id: 5, with: 6)
UserReflect.create(user_id: 6, with: 4)
UserReflect.create(user_id: 6, with: 5)

AggregateLog.create(user_id: 1, event_id: 1, laugh_std: 0.4, rare_encount_point: 3, taken_picture_with_many_people_point: 7,
                    take_good_picture_point: 4, between_product_interact_point: 8, divercity_point: 7, score: 6)
AggregateLog.create(user_id: 2, event_id: 1, laugh_std: 0.5, rare_encount_point: 4, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 3, between_product_interact_point: 9, divercity_point: 8, score: 6)
AggregateLog.create(user_id: 3, event_id: 1, laugh_std: 0.3, rare_encount_point: 2, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)
AggregateLog.create(user_id: 4, event_id: 1, laugh_std: 0.2, rare_encount_point: 1, taken_picture_with_many_people_point: 6,
                    take_good_picture_point: 7, between_product_interact_point: 9, divercity_point: 5, score: 5)
AggregateLog.create(user_id: 5, event_id: 1, laugh_std: 0.4, rare_encount_point: 4, taken_picture_with_many_people_point: 5,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)

AggregateLog.create(user_id: 1, event_id: 2, laugh_std: 0.5, rare_encount_point: 4, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 3, between_product_interact_point: 9, divercity_point: 8, score: 6)
AggregateLog.create(user_id: 2, event_id: 2, laugh_std: 0.3, rare_encount_point: 2, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)
AggregateLog.create(user_id: 3, event_id: 2, laugh_std: 0.4, rare_encount_point: 4, taken_picture_with_many_people_point: 5,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)
AggregateLog.create(user_id: 4, event_id: 2, laugh_std: 0.4, rare_encount_point: 3, taken_picture_with_many_people_point: 7,
                    take_good_picture_point: 4, between_product_interact_point: 8, divercity_point: 7, score: 6)
AggregateLog.create(user_id: 5, event_id: 2, laugh_std: 0.2, rare_encount_point: 1, taken_picture_with_many_people_point: 6,
                    take_good_picture_point: 7, between_product_interact_point: 9, divercity_point: 5, score: 5)
