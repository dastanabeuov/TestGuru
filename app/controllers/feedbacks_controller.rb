class FeedbacksController < ApplicationController
  
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params) 
    if @feedback.valid?
      FeedbacksMailer.ready_feedback(@feedback).deliver_now
      redirect_to root_url, notice: t('.success')
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :message)
  end

end