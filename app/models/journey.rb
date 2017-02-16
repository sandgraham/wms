class Journey < ApplicationRecord
  belongs_to :start_place, :class_name => 'Place'
  belongs_to :end_place, :class_name => 'Place'
end
