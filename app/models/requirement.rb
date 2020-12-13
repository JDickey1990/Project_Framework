class Requirement < ApplicationRecord
has_many :project_requirements
has_many :projects, through: :project_requirements
end
