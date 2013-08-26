class ChallengesController < ApplicationController

  def regex_play
    @friends = User.where(:in_arena => true)
    id = rand(1..InputOutputString.count)
    challenge = InputOutputString.find(id)
    @string = InputString.find(challenge.input_string_id).string
    @expected_output = OutputString.find(challenge.output_string_id).string
    @correct = ' '
    @submission = ""
  end

  def regex_check
    @friends = User.where(:in_arena => true)
    @time = params[:time].split(',')
    @submission = params[:submission]
    @string = params[:string]
    @expected_output = params[:expected_output]
    @current_output = @string.scan(eval("/#{@submission}/")).flatten.join(' ')
    if @current_output == @expected_output
      @correct = true
    else
      @correct = false
    end
  end

  def output_play
    @friends = User.where(:in_arena => true)
    id = rand(1..InStringRegex.count)
    challenge = InStringRegex.find(id)
    @input = InString.find(challenge.in_string_id).string
    @regex = Regex.find(challenge.regex_id).expression
    @correct = ' '
    @submission = ""
  end

  def output_check
    @friends = User.where(:in_arena => true)
    @time = params[:time].split(',')
    @submission = params[:submission]
    @input = params[:input]
    @regex = params[:regex]
    @correct_output = @input.scan(eval("/#{@regex}/")).flatten.join(' ')
    if @submission == @correct_output
      @correct = true
    else
      @correct = false
    end
  end

  def friends_list
    @friends = User.where(:in_arena => true)
  end

end