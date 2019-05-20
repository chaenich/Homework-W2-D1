class Team

attr_reader( :team_name, :team_players, :team_coach )

  def initialize(name, players, coach)
    @team_name = name
    @team_players = players
    @team_coach = coach
  end

end
