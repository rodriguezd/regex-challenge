class InputString < ActiveRecord::Base
  attr_accessible :output_string_id, :string

  has_many :input_output_strings
  has_many :output_strings, :through => :input_output_strings

end
