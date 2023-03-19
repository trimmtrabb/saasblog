class Post < ApplicationRecord
  scope :free, -> { where(premium: false) }

  validates :title, :content, presence: true
end
