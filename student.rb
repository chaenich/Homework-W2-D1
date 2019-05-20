class Student

attr_accessor( :student_name, :student_cohort)

  def initialize(name, cohort)
    @student_name = name
    @student_cohort = cohort
  end

  def talk_to_me
    return "Hey there, looking good!"
  end

  def what_lang_do_you_love(lang)
    return "I love #{lang}!"
  end

end
