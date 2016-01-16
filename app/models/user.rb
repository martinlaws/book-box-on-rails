class User < ActiveRecord::Base
  has_secure_password
  has_many :books
  has_many :trades
  has_one :location

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true

  def posting_trades
    Trade.where(posting_user: id)
  end

  def receiving_trades
    Trade.where(receiving_user: id)
  end

end
