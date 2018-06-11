class Highlight < ActiveRecord::Base
  belongs_to :user
  belongs_to :text
  validates :content, presence: true, length: { minimum: 2 }
  validates :notes, presence: true, length: { minimum: 2 }
  scope :order_by_recently_updated, -> { order(updated_at: :desc) }
end
