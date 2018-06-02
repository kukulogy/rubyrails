class Review < ApplicationRecord
  belongs_to :professor
  validates :review, presence: true,
                      length: { minimum: 5 }

end
