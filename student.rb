class Student

attr_reader( :student_name, :student_cohort)
# attr_accessor( :holder_name)

  def initialize(name, cohort)
    @student_name = name
    @student_cohort = cohort
  end

  # def get_name()
  #   return @student_name
  # end
  #
  # def get_cohort()
  #   return @student_cohort
  # end


end
