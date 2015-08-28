class Recreation < ActiveRecord::Base
	TYPE = %w[ interscholastic_sports recreational_sports arts ]
	has_many :school_recreations
end
