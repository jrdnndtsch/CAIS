class Recreation < ActiveRecord::Base
	TYPE = [ 'Interscholastic Sports', 'Recreational Sports', 'Arts' ]
	has_many :school_recreations
end
