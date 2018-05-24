class Admin::WordAnswersController < ApplicationController
  def index
    @word_answers = WordAnswer.all
  end
end
