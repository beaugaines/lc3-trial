class Highlight < ActiveRecord::Base
  belongs_to :user
  belongs_to :text
  scope :recently_updated, -> { order(updated_at: :desc) }
end
