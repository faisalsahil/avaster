class Country < ApplicationRecord
  has_many :packages
  has_many :currencies, dependent: :destroy
  
  default_scope -> {where(is_active: true)}
end


