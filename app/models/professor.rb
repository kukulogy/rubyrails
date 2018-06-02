class Professor < ApplicationRecord
	has_many :record, dependent: :delete_all
	has_many :rates, dependent: :delete_all
	has_many :reviews, dependent: :delete_all
	has_many :classroom, :through => :record
	validates :name, presence: true,
	                    length: { minimum: 5 }
end
