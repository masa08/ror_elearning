class LessonWordsController < ApplicationController
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @word = (@lesson.category.words - @lesson.words).try(:first)

    unless @word.nil?
      @lesson_word = @lesson.lesson_words.build(word: @word)
    else
      redirect_to @lesson
    end
  end

  def create
    lesson = Lesson.find(params[:lesson_id])

    if lesson.lesson_words.create!(lesson_word_params)
      redirect_to new_lesson_lesson_word_path(lesson)
    else
      abort
    end
  end

  private
  def lesson_word_params
    params.require(:lesson_word).permit(:word_id, :word_answer_id)
  end
end
