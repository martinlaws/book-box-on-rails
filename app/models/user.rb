class User < ActiveRecord::Base

  has_secure_password
  has_many :books
  has_many :trades

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniquness: true

end
