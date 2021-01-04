class Requirement < ApplicationRecord
has_many :deadlines
has_many :projects, through: :deadlines, dependent: :destroy

accepts_nested_attributes_for :deadlines

validates :description, presence: true
end