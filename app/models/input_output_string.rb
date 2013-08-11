class InputOutputString < ActiveRecord::Base
  attr_accessible :input_string_id, :output_string_id

  belongs_to :input_string
  belongs_to :output_string

end
