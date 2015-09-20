class Recreation < ActiveRecord::Base
	TYPE = [ 'Interscholastic Sports', 'Recreational Sports', 'Arts' ]
	has_many :school_recreations
	has_many :schools, through: :school_recreations
	belongs_to :recreation_type
end
