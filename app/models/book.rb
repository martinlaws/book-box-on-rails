class Book < ActiveRecord::Base
  validates :title, :author, :genre, presence: true

  belongs_to :user
  has_many :trades

end
