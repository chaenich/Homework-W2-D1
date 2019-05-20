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

    student.student_name = 'Greg Nich'

    assert_equal('Greg Nich', student.student_name)
  end

  def test_set_student_cohort
    student = Student.new('Ailsa Nich', 'E31')

    student.student_cohort = 'C32'

    assert_equal('C32', student.student_cohort)
  end

  def test_student_is_friendly
    student = Student.new('Ailsa Nich', 'E31')

    response = student.talk_to_me

    assert_equal("Hey there, looking good!", response)
  end

  def test_say_favourite_lang
    student = Student.new('Ally Nich', 'E31')

    response = student.what_lang_do_you_love('Ruby')

    assert_equal("I love Ruby!", response)
  end
end
