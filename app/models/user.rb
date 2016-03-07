class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { maximum: 15 }

  validates :twitter_id, presence: true
  validates :twitter_id, length: { maximum: 15 }

  validates :message, presence: true
  validates :icon, presence: true
end
