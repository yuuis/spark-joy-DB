# frozen_string_literal: true

json.leader_id @bunch.leader
json.users @users do |user|
  json.id user.id
  json.name user.name
  json.product_team_name user.product_team.name
  json.score_sum user.aggregate_logs.map(&:score).inject(:+)
end
