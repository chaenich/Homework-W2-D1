require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    assert_equal('Footy 3', team.team_name)
  end

  def test_get_team_players
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    assert_equal(['Player1', 'Player2', 'Player3'], team.team_players)
  end

  def test_get_team_coach
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    assert_equal('The_Coach', team.team_coach)
  end

  def test_update_coach_name
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    team.team_coach = 'NEW_Coach'

    assert_equal('NEW_Coach', team.team_coach)
  end

  def test_add_player
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    team.add_player('NewPlayer')

    assert_equal(['Player1', 'Player2', 'Player3', 'NewPlayer'], team.team_players)
  end

  def test_check_for_player_true
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    player_exists = team.check_for_player('Player1')

    assert_equal(true, player_exists)
  end

  def test_check_for_player_false
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    player_exists = team.check_for_player('Player5')

    assert_equal(false, player_exists)
  end

  def test_update_points_win
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    team.update_points('win')

    assert_equal(3, team.team_points)
  end

  def test_update_points_draw
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    team.update_points('draw')

    assert_equal(1, team.team_points)
  end

  def test_update_points_lose
    team = Team.new('Footy 3', ['Player1', 'Player2', 'Player3'], 'The_Coach', 0)

    team.update_points('lose')

    assert_equal(0, team.team_points)
  end

end
