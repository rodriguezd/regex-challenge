# == Schema Information
#
# Table name: input_output_strings
#
#  id               :integer          not null, primary key
#  output_string_id :integer
#  input_string_id  :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class InputOutputString < ActiveRecord::Base
  attr_accessible :input_string_id, :output_string_id

  belongs_to :input_string
  belongs_to :output_string

end
