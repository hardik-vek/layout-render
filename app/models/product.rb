# frozen_string_literal: true
class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :price, presence: true
  has_many :orders, dependent: :destroy
end
