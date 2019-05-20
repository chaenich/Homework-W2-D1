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
### Why does this update work when :team_players only has attr_reader attrib set?
    team_players.push(new_player)
  end

  def check_for_player(player)
    return @team_players.include?(player)
  end

  def update_points(result)
    # win: +3 points
    # draw: +1 point
    # lose: 0 points
    if result == 'win'
      @team_points += 3
    elsif result == 'draw'
      @team_points += 1
    else
      @team_points += 0
    end
  end
end
