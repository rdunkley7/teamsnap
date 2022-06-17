class Team < ApplicationRecord
    validates :team_name, :captain_first, :captain_last, presence: true
end