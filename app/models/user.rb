class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :investments

  def invest(amount)
    self.investment += amount
    self.save
    total = User.sum(:investment) + User.sum(:calculated_profit)
    User.all.each do |user|
      user.share = (user.investment + user.calculated_profit) / total
      user.save
    end
  end

  def balance
    self.investment + self.calculated_profit + self.pending_profit
  end
end
