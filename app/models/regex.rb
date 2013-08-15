class Regex < ActiveRecord::Base
  attr_accessible :expression

  has_one :in_string_regex
  has_one :in_string, :through => :in_string_regex
end
