class Project < ApplicationRecord

	#check user role is admin then create the project
	def can_project_create(valid_user, project)
		if valid_user
			project.save
			return true
		else
			return false
		end
	end
end
