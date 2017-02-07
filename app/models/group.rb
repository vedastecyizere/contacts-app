class Group < ApplicationRecord
  has_many :group_products
  has_many :contacts, through: :group_products
  
end
