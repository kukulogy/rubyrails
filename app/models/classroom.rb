class Classroom < ApplicationRecord
	has_many :record, dependent: :delete_all
	has_many :professor, :through => :record

	has_many :rates, dependent: :delete_all
	has_many :professor, :through => :rates

	validates :title, presence: true,
	                    length: { minimum: 5 }
end
