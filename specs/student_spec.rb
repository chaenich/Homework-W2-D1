require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new('Chae Nich', 'E31')

    assert_equal('Chae Nich', student.student_name)
  end

  def test_get_student_cohort
    student = Student.new('Bob Nich', 'E31')

    assert_equal('E31', student.student_cohort)
  end

  def test_set_student_name
    student = Student.new('Mike Nich', 'E31')

    student.set_name('Greg Nich')

    assert_equal('Greg Nich', student.student_name)
  end

  def test_set_student_cohort
    student = Student.new('Ailsa Nich', 'E31')

    student.set_cohort('C32')

    assert_equal('C32', student.student_cohort)
  end

end
