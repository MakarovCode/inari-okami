class ProductSupply < ApplicationRecord
  belongs_to :product
  belongs_to :supply
end
