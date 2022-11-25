class Transaction < ApplicationRecord
  belongs_to :asset

  after_create :update_asset

  def update_asset
    ass = Asset.find_by(id: self.asset.id)
    ass.qty += self.qty
    ass.price = self.amount / self.qty
    ass.amount = ass.qty * ass.price
    ass.save

    Rate.new(asset: ass, date:self.date, price:(self.amount/1.05)/self.qty).save
  end
end
