class Book < ActiveRecord::Base
  validates :title, :author, :genre, presence: true

  belongs_to :user
  has_many :trades

  def not_owned_by_current_user?(current_user)
    user_id != current_user.id
  end

  def available?
    self.availability == true
  end

  def make_available
    self.availability = true
  end

  def make_unavailable
    self.availability = false
  end

end
