# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true

  has_many :pictures, dependent: :restrict_with_error

  def aggregate_user(user_id)
    @user = User.find(user_id)
    @user_pictures = @user.user_pictures.includes(:picture).references(:picture).where('pictures.event_id = ?', id)

    @laugh_std = aggregate_laugh_std
    @rare_eoncount_point = aggregate_rare_eoncount_point
    @taken_picture_with_many_people_point = aggregate_taken_picture_with_many_people_point
    @take_good_picture_point = aggregate_take_good_picture_point
    @between_product_interact_point = aggregate_between_product_interact_point
    # @diversity_point = aggregate_diversity_point
  end

  private

  def aggregate_laugh_std
    format("%.1f", @user_pictures.sum(:smile_point) / @user_pictures.count)
  end

  def aggregate_rare_eoncount_point
    sum = {}
    UserReflect.where('user_id = ?', @user.id).each do |user_reflect|
      sum[user_reflect.with] = UserReflect.where(user_id: @user.id).where(with: user_reflect.with).count
    end

    most_relation = sum.max{ |x, y| x[1] <=> y[1] }[0]
    point = sum.find { |k,v| k > sum[most_relation] / 20 }.count

    return point if point < 5
    return 5
  end

  def aggregate_taken_picture_with_many_people_point
    sum = []
    @user_pictures.each do |user_picture|
      sum += (UserPicture.where('picture_id = ?', user_picture.picture_id).where('user_id != ?', @user.id))
    end
    point = sum.uniq { |up| up.user_id }.count

    return point if point < 15
    return 15
  end

  def aggregate_take_good_picture_point
      point = Picture.where('taken_by = ?', @user.id).count

      return point if point < 5
      return 5
  end

  def aggregate_between_product_interact_point
    sum = []
    @user_pictures.each do |user_picture|
      u_pic = UserPicture.where('picture_id = ?', user_picture.picture_id).where('user_id != ?', @user.id)
      sum += u_pic.joins(:user).references(:user).where('users.product_team_id != ?', @user.product_team_id)
    end
    point = sum.uniq { |up| up.user_id }.count

    return point if point < 10
    return 10
  end

  def diversity_point

  end
end
