class GenreDisplayController < ApplicationController
  def new
  end

  def show
      @test = Question.new()

  	  a = Genre.where(genrename:params[:genre])
  	  b = SubGenre.where(Genre_id:a[0].id)
  	  $c = Question.where(sub_genre_id:b[0].id)
  end

  def check
      @test = Question.new(question_params)
  end

  private

  def question_params
      params.require(:question).permit(:question, :option1, :option2, :option3, :option4, :genre, :a1, :a2, :a3, :a4, :subgenre)
  end

end
