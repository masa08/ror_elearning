class LessonsController < ApplicationController
  def index
    @lessons = Lesson.where(user_id: params[:user_id])
  end

  def show
    @lesson = Lesson.find(params[:id])

    # get the number of corrrect answer
    @correct = 0
    @lesson.lesson_words.each do |lesson_word|
      if lesson_word.word_answer.correct == true
        @correct += 1
      end
    end
  end

  def create
    category = Category.find(params[:category_id])
    lesson = current_user.lessons.create(category: category)

    redirect_to new_lesson_lesson_word_path(lesson)
  end
end
