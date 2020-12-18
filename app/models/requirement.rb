class Requirement < ApplicationRecord
has_many :deadlines
has_many :projects, through: :deadlines
end