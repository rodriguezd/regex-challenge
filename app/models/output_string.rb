class OutputString < ActiveRecord::Base
  attr_accessible :input_string_id, :string

  has_one :input_output_string
  has_one :input_string, :through => :input_output_string

end
