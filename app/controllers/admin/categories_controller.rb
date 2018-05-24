class Admin::CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @word = @category.words.build
    @word.word_answers.build
  end

  def create
    @category = Category.new(categories_params)

    if @category.save
      redirect_to admin_categories_path
    else
      render 'new'
    end

  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(categories_params)
      redirect_to admin_categories_path
    else
      render 'edit'
    end

  end

  def destroy
    category = Category.find( params[:id])
    category.destroy
    redirect_to admin_categories_path
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
