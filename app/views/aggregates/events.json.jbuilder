# frozen_string_literal: true

json.event_records do |_event_record|
  json.user_points @agglegate_log, :laugh_std, :rare_encount_point, :taken_picture_with_many_people_point, :take_good_picture_point, :between_product_interact_point, :diversity_point, :score
  json.user_score @agglegate_log.score
  json.bunch_score @bunch_avg
end
