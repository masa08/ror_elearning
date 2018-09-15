class Admin::WordsController < ApplicationController
  before_action :require_admin

  def index
    @words = Word.all
  end
end
