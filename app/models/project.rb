class Project < ApplicationRecord
  belongs_to :developer, optional: true
  belongs_to :customer, optional: true

  has_many :project_languages
  has_many :languages, through: :project_languages

  has_one :review

  def self.date_created_asc
    self.order(:created_at)
  end

  def self.date_created_desc
    self.order(created_at: :desc)
  end

  def self.price_asc
    self.order(:price)
  end

  def self.price_desc
    self.order(price: :desc)
  end

  def self.filter_by_price(min, max)
    self.where("price > #{min} and price < #{max}").order(price: :desc)
  end
end
