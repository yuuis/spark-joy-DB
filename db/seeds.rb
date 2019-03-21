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
                     product_team_id: 3, point: 10, role_id: 2, join_date: Date.new(2018, 12, 1), person_id: '4fab4a00-d8a2-4e13-8d37-bdb69bf1ec0')
@gal = User.create(name: 'ガル', smile_std: 0.4, birthday: Date.new(1996, 4, 20),
                   product_team_id: 1, point: 20, role_id: 2, join_date: Date.new(2019, 1, 1), person_id: 'b871c83b-19ca-4fbf-adb1-a76426bc1447')

@ushi = User.create(name: 'うしちゃん', smile_std: 0.3, birthday: Date.new(1997, 8, 2),
                    product_team_id: 2, point: 15, role_id: 2, join_date: Date.new(2018, 8, 1), person_id: '01a6ea2f-860c-4e8f-9ffd-b0cbdbeb575a')
@rami_chan = User.create(name: 'ラミちゃん', smile_std: 0.3, birthday: Date.new(1995, 5, 19),
                         product_team_id: 1, point: 20, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: '97f1fc91-f0d9-4a48-bdb5-2059a772fee7')

@perry = User.create(name: 'ペリー', smile_std: 0.5, birthday: Date.new(1997, 5, 6),
                     product_team_id: 2, point: 15, role_id: 2, join_date: Date.new(2019, 2, 1), person_id: '112a7156-60ea-45cc-8323-8c0086ce76b6')
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

# event_1
Picture.create(event_id: 1, taken_by: 5) # 1
UserPicture.create(user_id: 1, picture_id: 1, smile_point: 0.8)
UserPicture.create(user_id: 2, picture_id: 1, smile_point: 0.6)
UserPicture.create(user_id: 3, picture_id: 1, smile_point: 0.9)
[1, 2, 3].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 1) # 2
UserPicture.create(user_id: 2, picture_id: 2, smile_point: 0.4)
UserPicture.create(user_id: 4, picture_id: 2, smile_point: 0.7)
[2, 4].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 6) # 3
UserPicture.create(user_id: 1, picture_id: 3, smile_point: 0.8)
UserPicture.create(user_id: 2, picture_id: 3, smile_point: 0.4)
UserPicture.create(user_id: 3, picture_id: 3, smile_point: 0.6)
UserPicture.create(user_id: 4, picture_id: 3, smile_point: 0.9)
[1, 2, 3, 4].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 3) # 4
UserPicture.create(user_id: 5, picture_id: 4, smile_point: 0.7)

Picture.create(event_id: 1, taken_by: 1) # 5
UserPicture.create(user_id: 5, picture_id: 5, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 5, smile_point: 0.7)
[5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 3) # 5
UserPicture.create(user_id: 1, picture_id: 6, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 6, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 6, smile_point: 0.7)
[1, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 3) # 6
UserPicture.create(user_id: 2, picture_id: 6, smile_point: 0.8)
UserPicture.create(user_id: 3, picture_id: 6, smile_point: 0.6)
UserPicture.create(user_id: 5, picture_id: 6, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 6, smile_point: 0.7)
[2, 3, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 5) # 7
UserPicture.create(user_id: 1, picture_id: 7, smile_point: 0.9)
UserPicture.create(user_id: 6, picture_id: 7, smile_point: 0.8)
[1, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 1, taken_by: 2) # 8
UserPicture.create(user_id: 4, picture_id: 8, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 8, smile_point: 0.6)
UserPicture.create(user_id: 6, picture_id: 8, smile_point: 0.9)
[4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end


# event_2
Picture.create(event_id: 2, taken_by: 2) # 9
UserPicture.create(user_id: 1, picture_id: 9, smile_point: 0.8)
UserPicture.create(user_id: 3, picture_id: 9, smile_point: 0.6)
UserPicture.create(user_id: 5, picture_id: 9, smile_point: 0.9)
[1, 3, 5].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 1) # 10
UserPicture.create(user_id: 2, picture_id: 10, smile_point: 0.4)
UserPicture.create(user_id: 4, picture_id: 10, smile_point: 0.7)
[2, 4].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 6) # 11
UserPicture.create(user_id: 1, picture_id: 11, smile_point: 0.8)
UserPicture.create(user_id: 2, picture_id: 11, smile_point: 0.4)
UserPicture.create(user_id: 4, picture_id: 11, smile_point: 0.9)
UserPicture.create(user_id: 5, picture_id: 11, smile_point: 0.6)
[1, 2, 4, 5].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 3) # 12
UserPicture.create(user_id: 1, picture_id: 12, smile_point: 0.7)

Picture.create(event_id: 2, taken_by: 1) # 13
UserPicture.create(user_id: 5, picture_id: 13, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 13, smile_point: 0.6)
[5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 6) # 14
UserPicture.create(user_id: 4, picture_id: 14, smile_point: 0.7)
UserPicture.create(user_id: 5, picture_id: 14, smile_point: 0.8)
UserPicture.create(user_id: 6, picture_id: 14, smile_point: 0.7)
[4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 1) # 15
UserPicture.create(user_id: 2, picture_id: 15, smile_point: 0.8)
UserPicture.create(user_id: 3, picture_id: 15, smile_point: 0.6)
UserPicture.create(user_id: 4, picture_id: 15, smile_point: 0.6)
UserPicture.create(user_id: 5, picture_id: 15, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 15, smile_point: 0.7)
[2, 3, 4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 5) # 16
UserPicture.create(user_id: 1, picture_id: 16, smile_point: 0.9)
UserPicture.create(user_id: 3, picture_id: 16, smile_point: 0.9)
UserPicture.create(user_id: 6, picture_id: 16, smile_point: 0.8)
[1, 3, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 2, taken_by: 3) # 17
UserPicture.create(user_id: 4, picture_id: 17, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 17, smile_point: 0.6)
UserPicture.create(user_id: 6, picture_id: 17, smile_point: 0.9)
[4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end


# event_3
Picture.create(event_id: 3, taken_by: 6) # 18
UserPicture.create(user_id: 1, picture_id: 18, smile_point: 0.8)
UserPicture.create(user_id: 2, picture_id: 18, smile_point: 0.6)
UserPicture.create(user_id: 5, picture_id: 18, smile_point: 0.9)
[1, 2, 5].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 1) # 19
UserPicture.create(user_id: 2, picture_id: 19, smile_point: 0.4)
UserPicture.create(user_id: 4, picture_id: 19, smile_point: 0.4)
UserPicture.create(user_id: 6, picture_id: 19, smile_point: 0.7)
[2, 4, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 6) # 20
UserPicture.create(user_id: 1, picture_id: 20, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 20, smile_point: 0.6)
[1, 5].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 3) # 21
UserPicture.create(user_id: 1, picture_id: 21, smile_point: 0.7)

Picture.create(event_id: 3, taken_by: 1) # 22
UserPicture.create(user_id: 2, picture_id: 22, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 22, smile_point: 0.6)
[2, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 6) # 23
UserPicture.create(user_id: 4, picture_id: 23, smile_point: 0.7)
UserPicture.create(user_id: 5, picture_id: 23, smile_point: 0.8)
UserPicture.create(user_id: 6, picture_id: 23, smile_point: 0.7)
[4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 1) # 24
UserPicture.create(user_id: 2, picture_id: 24, smile_point: 0.8)
UserPicture.create(user_id: 3, picture_id: 24, smile_point: 0.6)
UserPicture.create(user_id: 4, picture_id: 24, smile_point: 0.6)
UserPicture.create(user_id: 5, picture_id: 24, smile_point: 0.7)
UserPicture.create(user_id: 6, picture_id: 24, smile_point: 0.7)
[2, 3, 4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 5) # 25
UserPicture.create(user_id: 1, picture_id: 25, smile_point: 0.9)
UserPicture.create(user_id: 3, picture_id: 25, smile_point: 0.9)
UserPicture.create(user_id: 6, picture_id: 25, smile_point: 0.8)
[1, 3, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

Picture.create(event_id: 3, taken_by: 3) # 26
UserPicture.create(user_id: 4, picture_id: 26, smile_point: 0.8)
UserPicture.create(user_id: 5, picture_id: 26, smile_point: 0.6)
UserPicture.create(user_id: 6, picture_id: 26, smile_point: 0.9)
[4, 5, 6].permutation(2) do |p|
  UserReflect.create(user_id: p[0], with: p[1])
end

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

AggregateLog.create(user_id: 1, event_id: 2, laugh_std: 0.4, rare_encount_point: 4, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 3, between_product_interact_point: 9, divercity_point: 8, score: 6)
AggregateLog.create(user_id: 2, event_id: 2, laugh_std: 0.5, rare_encount_point: 2, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)
AggregateLog.create(user_id: 3, event_id: 2, laugh_std: 0.3, rare_encount_point: 4, taken_picture_with_many_people_point: 5,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)
AggregateLog.create(user_id: 4, event_id: 2, laugh_std: 0.2, rare_encount_point: 3, taken_picture_with_many_people_point: 7,
                    take_good_picture_point: 4, between_product_interact_point: 8, divercity_point: 7, score: 6)
AggregateLog.create(user_id: 5, event_id: 2, laugh_std: 0.5, rare_encount_point: 1, taken_picture_with_many_people_point: 6,
                    take_good_picture_point: 7, between_product_interact_point: 9, divercity_point: 5, score: 5)

AggregateLog.create(user_id: 1, event_id: 3, laugh_std: 0.4, rare_encount_point: 6, taken_picture_with_many_people_point: 9,
                    take_good_picture_point: 6, between_product_interact_point: 6, divercity_point: 7, score: 6)
AggregateLog.create(user_id: 2, event_id: 3, laugh_std: 0.5, rare_encount_point: 6, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 5, between_product_interact_point: 9, divercity_point: 9, score: 9)
AggregateLog.create(user_id: 3, event_id: 3, laugh_std: 0.3, rare_encount_point: 2, taken_picture_with_many_people_point: 8,
                    take_good_picture_point: 8, between_product_interact_point: 7, divercity_point: 8, score: 7)
AggregateLog.create(user_id: 4, event_id: 3, laugh_std: 0.2, rare_encount_point: 1, taken_picture_with_many_people_point: 6,
                    take_good_picture_point: 6, between_product_interact_point: 9, divercity_point: 5, score: 7)
AggregateLog.create(user_id: 5, event_id: 3, laugh_std: 0.4, rare_encount_point: 4, taken_picture_with_many_people_point: 5,
                    take_good_picture_point: 3, between_product_interact_point: 7, divercity_point: 8, score: 7)
