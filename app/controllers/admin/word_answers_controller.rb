class Admin::WordAnswersController < ApplicationController
  before_action :require_admin

  def index
    @word_answers = WordAnswer.all
  end
end
