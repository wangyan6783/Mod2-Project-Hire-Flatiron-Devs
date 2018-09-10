class Developer < ApplicationRecord
  has_many :projects
  has_many :languages, through: :projects
  has_many :customers, through: :projects
  has_many :reviews, through: :projects

  def my_languages
    self.languages.uniq.pluck(:name)
  end

  def my_reviews
    #code
  end

  def average_rating
    #code
  end

  def get_total_projects
    #code
  end

  def amt_earned
    #code
  end

end##END OF CLASS



#my_languages // list all the languages .uniq (of all languages)
#review //list of all reviews (self)
#average_rating //average rating of all reviews
#get_total_projects //return the size of the projects accrued
#amt_earned // sum of the price for all projects that were accepted
