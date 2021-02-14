class AddTeamToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :team, index: true, foreign_key: true
  end
end
