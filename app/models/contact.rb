class Contact < ApplicationRecord
  has_many :group_products
  has_many :groups, through: :group_products
end
