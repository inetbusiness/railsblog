class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  has_many :pictures, as: :imageable
end
