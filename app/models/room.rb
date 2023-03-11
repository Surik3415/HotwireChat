# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :messages, -> { sorted }, dependent: :destroy

  belongs_to :user
  before_action { self.title = SecureRandom.hex(3) }
end
