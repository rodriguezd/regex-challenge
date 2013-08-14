class ChallengesController < ApplicationController

  def play
    id = rand(1..InputString.count)
    input_string = InputString.find(id)
    @string = input_string.string
    id = rand(1..input_string.output_strings.count)
    output_string = OutputString.find(id)
    @expected_output = output_string.string
    @correct = ' '
    @submission = ""
  end

  def check
    # raise params.inspect
    @submission = params[:submission]
    @string = params[:string]
    @expected_output = params[:expected_output]
    # debugger
    @current_output = @string.scan(eval("/#{@submission}/")).flatten.join(' ')
    if @current_output == @expected_output
      @correct = true
    else
      @correct = false
    end


    render :action => :play
  end

end