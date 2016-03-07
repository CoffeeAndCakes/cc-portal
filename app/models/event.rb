class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :title, length: { maximum: 50 }

  validates :contents, presence: true
  validates :title, length: { maximum: 300 }

  validates :date, presence: true
end
