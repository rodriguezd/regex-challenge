# == Schema Information
#
# Table name: input_strings
#
#  id               :integer          not null, primary key
#  string           :text
#  output_string_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class InputString < ActiveRecord::Base
  attr_accessible :output_string_id, :string

  has_many :input_output_strings
  has_many :output_strings, :through => :input_output_strings

end
