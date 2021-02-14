namespace :fakernamespace do
	desc "generate_demo_data"
	task generate_demo_data: :environment do
		require 'faker'
		1000.times do
			Task.create(
					summary:        Faker::ChuckNorris.fact,
					description:    Faker::Community.quotes,
					project:        Faker::Number.between(1,10),
					status:         Task.status.sample.to_s,
					priority:       Task.priority.sample.to_s,
					comment:        Faker::BreakingBad.episode,
			)
		end

		10.times do
				Project.create(
						name: Faker::App.semantic_version,
				)
		end

		10.times do
				Team.create(
						name: Faker::Team.creature,
				)
		end
		
		100.times do
				User.create(
						name:     Faker::Name.name,
						email:    Faker::Internet.email,
						role:     User.roles.sample.to_s,
						team_id:  Faker::Number.between(1,10),
						password: "qwerty",
						password_confirmation: "qwerty",
				)
		end

	end

end
