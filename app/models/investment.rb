class Investment < ApplicationRecord
  belongs_to :user

  after_create :update_user_investment
  def update_user_investment
    puts 'update_user_investment'
    user.invest(amount)
  end
end
