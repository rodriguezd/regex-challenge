class ChallengesController < ApplicationController

  def play
    @string = "I am the 123 bandit name Tweety Tweet."
    @expected_output = "am name"
  end

  def check
    @submission = params[:submission]
    @string = params[:string]
    @expected_output = params[:expected_output]
    # debugger
    if @string.scan(eval("/#{@submission}/")).flatten.join(' ') == @expected_output
      @result = "Great job!"
    else
      @result = "Not quite!"
    end


    render :action => :play
  end

end