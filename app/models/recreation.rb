class Recreation < ActiveRecord::Base
	TYPE = [ 'Interscholastic Sports', 'Recreational Sports', 'Arts' ]
	has_many :school_recreations
	belongs_to :recreation_type
end
