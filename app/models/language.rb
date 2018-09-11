class Language < ApplicationRecord
  has_many :project_languages
  has_many :projects, through: :project_languages
  has_many :developers, through: :projects

  def project_count
    projects.uniq.count
  end

  def developer_count
    developers.uniq.count
  end
end
