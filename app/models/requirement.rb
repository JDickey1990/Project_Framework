class Requirement < ApplicationRecord
has_many :deadlines
has_many :projects, through: :deadlines

accepts_nested_attributes_for :deadlines

validates :description, presence: true
end