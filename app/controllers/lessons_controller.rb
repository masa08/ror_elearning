class LessonsController < ApplicationController
  def show
    # Using user answers,
    if params[:answer_id]
      #binding.pry
      @lesson_word = LessonWord.find(params[:lesson_word_id])
      @word_answer_id = @lesson_word.update(word_answer_id: params[:answer_id])
    end

  end

  def create
    # Creating a lesson.
    user_id = current_user.id
    category_id = params[:category_id]
    lesson = Lesson.create(user_id: user_id, category_id: category_id)

    # Creating a lesson_word
    category = Category.find(params[:category_id])
    words = category.words

    words.each do |word|
      lesson_word = LessonWord.new(lesson_id: lesson.id, word_id: word.id)
      lesson_word.word_answer_id = 1
      lesson_word.save
    end

    redirect_to lesson_lesson_word_path(lesson.id, lesson.lesson_words.first.id)
  end
end
