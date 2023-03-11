class Like < ApplicationRecord
  belongs_to :user
  belongs_to :room
  belongs_to :message, couter_cache: true
end
