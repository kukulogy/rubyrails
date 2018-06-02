class Rate < ApplicationRecord
  belongs_to :professor
  belongs_to :classroom
  validates :review, presence: true,
                      length: { minimum: 5 }

end
