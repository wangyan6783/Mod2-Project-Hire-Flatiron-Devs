class Developer < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :languages, through: :projects
  has_many :customers, through: :projects
  has_many :reviews, through: :projects

  validates :email, uniqueness: true
  validates :password, :email, presence: true

  def my_languages
    languages.uniq.pluck(:name)
  end

  # def my_reviews
  #   self.reviews
  # end

  def my_customer_names
    customers.uniq.pluck(:name)
  end

  def my_customer_emails
    customers.uniq.pluck(:email)
  end

  def my_project_titles
    projects.pluck(:title)
  end

  def average_rating
    total = reviews.inject(0.0) do |sum, review|
      sum + review.rating
    end
    (total / reviews.count).round(1)
  end

  def get_total_projects
    projects.count
  end

  def amt_earned
    projects.inject(0) do |sum, project|
      sum + project.price
    end
  end

end##END OF CLASS



#my_languages // list all the languages .uniq (of all languages)
#review //list of all reviews (self)
#average_rating //average rating of all reviews
#get_total_projects //return the size of the projects accrued
#amt_earned // sum of the price for all projects that were accepted
