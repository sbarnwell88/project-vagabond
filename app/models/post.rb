class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  validates :tip, presence: true
  validates :title, length: {in: 1..200}

end
