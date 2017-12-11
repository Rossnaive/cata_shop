class User < ApplicationRecord
  has_many :products, through: :orders
end
