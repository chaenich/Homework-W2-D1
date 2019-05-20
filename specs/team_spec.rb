require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    assert_equal('Footy 3', team.team_name)
  end

  def test_get_team_players
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    assert_equal(['Player1', 'Player2', 'Player3'], team.team_players)
  end

  def test_get_team_coach
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    assert_equal('The_Coach', team.team_coach)
  end

end
