class Cost < ActiveRecord::Base
  attr_accessible :description, :frequency, :name, :user_id, :value

	validates :name, :frequency, :value, :presence => true
	validate :value_cannot_be_zero
	validate :frequency_cannot_be_zero

	def monthly
		(value / frequency).to_i
	end

	def yearly
		((value / frequency) * 12).to_i
	end

	def quarterly
		((value / frequency) * 4).to_i
	end

	private

	def value_cannot_be_zero
		if value.to_i == 0
			errors.add(:value, "can't be zero")
		end
	end
	def frequency_cannot_be_zero
		if frequency.to_i == 0
			errors.add(:frequency, "can't be zero")
		end
	end
end

