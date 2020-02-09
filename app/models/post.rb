class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true
end
