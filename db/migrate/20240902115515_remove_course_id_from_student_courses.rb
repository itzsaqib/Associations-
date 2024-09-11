class RemoveCourseIdFromStudentCourses < ActiveRecord::Migration[7.2]
  def change
    remove_column :student_courses, :name, :string
  end
end
