class ChallengesController < ApplicationController

  def play
    id = rand(1..InputString.count)
    input_string = InputString.find(id)
    @string = input_string.string
    id = rand(1..input_string.output_strings.count)
    output_string = OutputString.find(id)
    @expected_output = output_string.string
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