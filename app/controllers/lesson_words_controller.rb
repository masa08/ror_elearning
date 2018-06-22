class LessonWordsController < ApplicationController
  def show
    # レッスンを取得
    @lesson = Lesson.find(params[:lesson_id])
    # いちばん最初のlesson_wordsを取得。
    @lesson_word = LessonWord.find(params[:id])
    # レッスンワードに紐づいたワードを取得
    @word = @lesson_word.word
    if params[:answer_id]
      lesson = params[:id].to_i - 1
      @lesson_word_second = LessonWord.find(lesson)
      @word_answer_id = @lesson_word_second.update(word_answer_id: params[:answer_id])
    end
   end

  def create

  end
end
