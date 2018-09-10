class Project < ApplicationRecord
  belongs_to :developer
  belongs_to :customer, optional: true

  has_many :project_languages
  has_many :languages, through: :project_languages
end
