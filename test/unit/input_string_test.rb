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

require 'test_helper'

class InputStringTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
