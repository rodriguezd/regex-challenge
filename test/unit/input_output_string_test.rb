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

require 'test_helper'

class InputOutputStringTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
