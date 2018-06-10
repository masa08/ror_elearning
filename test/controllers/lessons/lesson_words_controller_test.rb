require 'test_helper'

class Lessons::LessonWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lessons_lesson_words_show_url
    assert_response :success
  end

end
