class AddTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :coach_name
      t.string :captain_first, null: false, default: false
      t.string :captain_last, null: false, default: false
      t.string :description
      t.integer :num_players
      t.string :team_name, null: false, default: false
      t.timestamps
    end
  end
end
