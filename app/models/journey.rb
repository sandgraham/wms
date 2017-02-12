class Journey < ApplicationRecord
  belongs_to :place
  enum status: [ :pending, :approved, :rejected ]
end
