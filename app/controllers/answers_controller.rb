class AnswersController < ApplicationController
  def index
    @answers = Answer.all
    render :index
  end
end
