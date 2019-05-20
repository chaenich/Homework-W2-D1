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

  def test_update_coach_name
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    team.team_coach = 'NEW_Coach'

    assert_equal('NEW_Coach', team.team_coach)
  end

  def test_add_player
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    team.add_player('NewPlayer')

    assert_equal(['Player1', 'Player2', 'Player3', 'NewPlayer'], team.team_players)
  end

  def test_check_for_player_true
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    player_exists = team.check_for_player('Player1')

    assert_equal(true, player_exists)
  end

  def test_check_for_player_false
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach')

    player_exists = team.check_for_player('Player5')

    assert_equal(false, player_exists)
  end

end
