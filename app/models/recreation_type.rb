class RecreationType < ActiveRecord::Base
	has_many :recreations
	has_many :school_recreations, through: :recreations
end
