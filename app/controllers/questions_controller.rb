class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
      @questions = Question.all
    #   if current_user.admin == true
    #       @questions = Question.all
    #   else
    #       redirect_to root_path
    #   end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    #   if current_user.admin == true
    #   else
    #       redirect_to root_path
    #   end
  end

  # GET /questions/new
  def new
    if current_user.admin == true
        @question = Question.new
    else
        redirect_to root_path
    end
  end

  # GET /questions/1/edit
  def edit
      if current_user.admin == true
      else
          redirect_to root_path
      end
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
      a=''
      if(params[:Opta])
        a+='Opta'
        print("ok1\n\n\n")
      end
      if(params[:Optb])
        a+='Optb'
        print("ok2\n\n\n")
      end
      if(params[:Optc])
        a+='Optc'
        print("ok3\n\n\n")
      end
      if(params[:Optd])
        a+='Optd'
        print("ok4\n\n\n")
      end
      if(a == @question.answer)
          print("yes\n\n\n")
      else
          print("no\n\n\n")
      end
      redirect_to '/questions/#{params[:id]}'
    #   if a == @question.answer
    #       respond_to do |format|
    #           if @question.update(question_params)
    #               format.html { redirect_to @questions, notice: 'Question was successfully updated.' }
    #               format.json { render :show, status: :ok, location: @questions }
    #           else
    #               format.html { render :edit }
    #               format.json { render json: @question.errors, status: :unprocessable_entity }
    #           end
    #       end
    #   end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:number, :ques, :optA, :optB, :optC, :optD, :answer, :sub_genre_id)
    end
end
