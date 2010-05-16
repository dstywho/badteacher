class QuestionsController < ApplicationController

  def index
    @question = @current_user.questions.build

    if params[:question].nil?
      @questions = Question.all
    else
      params[:question].each do |k,v|
        if(v.blank?)
            params[:question].delete(k)
        end
      end

      @questions = Question.all(:conditions => params[:question])
    end
  end


  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.build
  end


  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end


  def create
    @question = Question.new(params[:question])

    respond_to do |format|
      if @question.save
        flash[:notice] = 'Question was successfully created.'
        format.html { redirect_to(@question) }
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end


  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        flash[:notice] = 'Question was successfully updated.'
        format.html { redirect_to(@question) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(questions_url) }
      format.xml  { head :ok }
    end
  end
end
