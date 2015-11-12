class Movie < ActiveRecord::Base

validates :title, :presence => true
validates :director_id, :presence => true, :uniqueness => {:scope => :year}
validates :year,:numericality => {:only_integer => true, :greater_that_or_equal_to => 1870, :less_than_or_equal_to => 2050 }
validates :duration, :numericality => {:only_integer => true, :greater_that_or_equal_to => 0, :less_than_or_equal_to => 2764800 }
end
