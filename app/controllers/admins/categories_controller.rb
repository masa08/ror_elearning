class Admins::CategoriesController < ApplicationController

  def new
    @category = Category.new
    @category.words.build
    # @category.word_answers.build
    @word = @category.words.build
    @word.word_answers.build
  end

  def create
    category = Category.new(categories_params)
    category.save
    redirect_to admins_category_path
  end

  private
  def categories_params
    params.require(:category).permit(:title,
                             :description,
                             words_attributes: [:id,
                                                :content,
                                                :category_id,
                                                :_destroy,
                                                word_answers_attributes: [:id,
                                                                          :content,
                                                                          :word_id,
                                                                          :correct,
                                                                          :_destroy
                                                                         ]
                                               ]
                             )
  end

end
