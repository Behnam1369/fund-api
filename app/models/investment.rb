class Investment < ApplicationRecord
  belongs_to :user

  before_create :post_pending_to_calculated
  after_create :update_user_investment

  def post_pending_to_calculated
    User.all.each do |user|
      user.calculated_profit += user.pending_profit
      user.pending_profit = 0
      user.save
    end
  end

  def update_user_investment
    user.invest(amount)
    total = User.sum(:investment) + User.sum(:calculated_profit)
    User.all.each do |user|
      user.share = (user.investment + user.calculated_profit) / total
      user.save
    end
  end
end
