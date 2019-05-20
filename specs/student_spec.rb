require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new('Chae Nich', 'E31')

    assert_equal('Chae Nich', student.get_name)
  end

  def test_student_cohort
    student = Student.new('Bob Nich', 'E31')

    assert_equal('E31', student.get_cohort)
  end

end
