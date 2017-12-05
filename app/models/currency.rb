class Currency < ApplicationRecord
  has_many :packages
  belongs_to :country
end
