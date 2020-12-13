class Project < ApplicationRecord
has_many :project_requirements
has_many :requirements, through: :project_requirements
end
