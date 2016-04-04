class News < ActiveRecord::Base
  validates :date, presence: true
  validates :text, presence: true
  validates :text, length: { maximum: 100 }
end
