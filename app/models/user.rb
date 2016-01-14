class User < ActiveRecord::Base
  has_secure_password
  has_many :books
  has_many :trades

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true

  def posting_trades
    Trade.where(posting_user: id)
  end

  def receiving_trades
    Trade.where(posting_user: id)
  end

end
