class Developer < ApplicationRecord
  has_many :projects
  has_many :customers, through: :projects
  has_many :reviews, through: :projects

  def my_languages
    
  end
end
