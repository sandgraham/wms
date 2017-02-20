class Journey < ApplicationRecord
  enum status: [:pending, :approved, :flagged, :removed]
end
