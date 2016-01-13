class User < ActiveRecord::Base
  has_secure_password
  has_many :books
  has_many :trades

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true

end
