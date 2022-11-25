class Rate < ApplicationRecord
  belongs_to :asset

  after_create :update_pending_profit

  def update_pending_profit
    cash = Investment.sum(:amount) - Transaction.sum(:amount)

    ass = Asset.find_by(id: asset.id)
    ass.price = price
    ass.amount = ass.qty * ass.price
    ass.save

    assets_amount = Asset.sum(:amount) * 0.99
    total = cash + assets_amount
    total_calculated_profit = User.sum(:investment) + User.sum(:calculated_profit)
    total_pending_profit = total - total_calculated_profit

    User.all.each do |user|
      user.pending_profit = user.share * total_pending_profit
      user.save
    end
  end
end
