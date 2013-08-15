class InStringRegex < ActiveRecord::Base
  attr_accessible :in_string_id, :regex_id

  belongs_to :in_string
  belongs_to :regex
end
