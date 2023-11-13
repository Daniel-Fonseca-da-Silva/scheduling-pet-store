class Pet < ApplicationRecord
    validates :name, presence: true
    scope :sorted_by_name, -> { order(name: :asc) }
end
