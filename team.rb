class Team

  attr_reader( :team_name, :team_players )
  attr_accessor( :team_coach, :team_points )

  def initialize(name, players, coach, points = 0)
    @team_name = name
    @team_players = players
    @team_coach = coach
    @team_points = points
  end

  def add_player(new_player)
### Why does this update work when :team_players only has attr_reader attrib set AND @team_players not used?
    team_players.push(new_player)
  end

  def check_for_player(player)
    return @team_players.include?(player)
  end

  def update_points(result)
    # win: +3 points
    # draw: +1 point
    # lose: 0 points
    points_update = {
      'win' => 3,
      'draw' => 1,
      'lose' => 0
    }
    @team_points += points_update[result]
  end
end
