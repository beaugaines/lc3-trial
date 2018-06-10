class Text < ActiveRecord::Base
  has_many :highlights, dependent: :destroy
end
