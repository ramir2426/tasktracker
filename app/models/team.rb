class Team < ApplicationRecord
	#relations with team
	has_many :users
end
