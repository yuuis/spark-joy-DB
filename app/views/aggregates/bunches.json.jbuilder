# frozen_string_literal: true

json.bunch_records do |_bucn_record|
  json.bunch_score_sum @bunch_score_sum
  json.user_score_sum @user_score_sum
  json.bunch_scores @bunch_scores
  json.user_scores @user_scores
end
