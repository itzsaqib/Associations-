require "application_system_test_case"

class StudentCoursesTest < ApplicationSystemTestCase
  setup do
    @student_course = student_courses(:one)
  end

  test "visiting the index" do
    visit student_courses_url
    assert_selector "h1", text: "Student courses"
  end

  test "should create student course" do
    visit student_courses_url
    click_on "New student course"

    click_on "Create Student course"

    assert_text "Student course was successfully created"
    click_on "Back"
  end

  test "should update Student course" do
    visit student_course_url(@student_course)
    click_on "Edit this student course", match: :first

    click_on "Update Student course"

    assert_text "Student course was successfully updated"
    click_on "Back"
  end

  test "should destroy Student course" do
    visit student_course_url(@student_course)
    click_on "Destroy this student course", match: :first

    assert_text "Student course was successfully destroyed"
  end
end
