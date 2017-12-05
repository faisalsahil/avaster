class Package < ApplicationRecord
  belongs_to :country
  belongs_to :currency
end
