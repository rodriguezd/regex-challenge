# == Schema Information
#
# Table name: output_strings
#
#  id              :integer          not null, primary key
#  string          :text
#  input_string_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class OutputString < ActiveRecord::Base
  attr_accessible :input_string_id, :string

  has_one :input_output_string
  has_one :input_string, :through => :input_output_string

end
