class Order < ApplicationRecord
  belongs_to :customer

  validates_associated :customer

  validates :product_name, presence: true, format: { with: /\A[a-z\-' ]+\z/i }
  validates :product_count, presence: true, numericality: { only_integer: true }
  # validates :customer, presence: true

end
