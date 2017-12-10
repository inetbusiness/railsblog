class Article < ApplicationRecord
  has_one :user
  has_many :comments
  has_many :pictures, as: :imageable
  validates :user, presence: true
  validates :title, presence: true,
                    length: { minimum: 5 }
end
