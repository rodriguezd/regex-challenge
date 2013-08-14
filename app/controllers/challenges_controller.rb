class ChallengesController < ApplicationController

  def regex_play
    id = rand(1..InputString.count)
    input_string = InputString.find(id)
    @string = input_string.string
    id = input_string.output_strings.map{|string| string.id}.sample
    output_string = OutputString.find(id)
    @expected_output = output_string.string
    @correct = ' '
    @submission = ""
  end

  def regex_check
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
    render :action => :regex_play
  end

end