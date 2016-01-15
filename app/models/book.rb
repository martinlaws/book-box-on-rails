class Book < ActiveRecord::Base
  validates :title, :author, :genre, presence: true

  belongs_to :user
  has_many :trades

  def not_owned_by_current_user?(current_user)
    user_id != current_user.id
  end

end
