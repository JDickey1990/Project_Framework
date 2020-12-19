class Project < ApplicationRecord
has_many :deadlines
has_many :requirements, through: :deadlines
belongs_to :user
 
accepts_nested_attributes_for :requirements
validates :name, presence: true
end
