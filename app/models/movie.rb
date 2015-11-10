class Movie < ActiveRecord::Base
  validates :director_id, :presence => true

#look in movie table, scope it down to mvies with same year, then make it unique with titles in the same scope
  validates :title, :presence => true, :uniqueness => {:scope => :year}


end
