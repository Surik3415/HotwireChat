# frozen_string_literal: true

class Message < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user
  belongs_to :room

  scope :sorted, -> { order(:id) }
  validates :body, presents: true
end
