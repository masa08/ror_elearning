class AdminsController < ApplicationController
  def category
    @categories = Category.all
  end

  def word
    @words = Word.all
  end

  def word_answer
    @word_answers = WordAnswer.all
  end

  def user
    @users = User.all
  end
end
