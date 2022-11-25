class Transaction < ApplicationRecord
  belongs_to :asset

  after_create :update_asset

  def update_asset
    ass = Asset.find_by(id: asset.id)
    ass.qty += qty
    ass.price = amount / qty
    ass.amount = ass.qty * ass.price
    ass.save

    Rate.new(asset: ass, date:, price: (amount / 1.05) / qty).save
  end
end
