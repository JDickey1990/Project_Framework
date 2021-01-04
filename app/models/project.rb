class Project < ApplicationRecord
    has_many :deadlines
    has_many :requirements, through: :deadlines, dependent: :destroy
    belongs_to :user
    
    accepts_nested_attributes_for :requirements
    validates :name, :project_deadline, presence: true

end
