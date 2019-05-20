class Team

attr_reader( :team_name, :team_players )
attr_accessor( :team_coach )

  def initialize(name, players, coach)
    @team_name = name
    @team_players = players
    @team_coach = coach
  end

  def add_player(new_player)
    team_players.push(new_player)
  end

  def check_for_player(player)
    return team_players.include?(player)
  end

end
