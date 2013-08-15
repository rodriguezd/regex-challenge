class InString < ActiveRecord::Base
  attr_accessible :string

  has_many :in_string_regexs
  has_many :regexs, :through => :in_string_regexs

end
