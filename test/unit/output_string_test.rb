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

require 'test_helper'

class OutputStringTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
