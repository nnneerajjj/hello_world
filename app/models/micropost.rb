# frozen_string_literal: true

class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { minimum: 3, maximum: 140 }

  default_scope -> { order(created_at: :desc) }
end
