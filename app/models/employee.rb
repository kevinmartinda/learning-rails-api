class Employee < ApplicationRecord
	validates :fullname, presence: true
	validates :position, presence: true
	validates :empcode, presence: true
	validates :mobile, presence: true
end
