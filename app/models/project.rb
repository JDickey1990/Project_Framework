class Project < ApplicationRecord
    has_many :deadlines
    has_many :requirements, through: :deadlines, dependent: :destroy
    belongs_to :user
    
    accepts_nested_attributes_for :requirements
    validates :name, :project_deadline, presence: true

    scope :incomplete, -> { where("completed == false") }

    def self.most_requirements
        Project.all.sort do |a, b|
            b.requirements.count <=> a.requirements.count
        end.first
    #     projects = Project.all
    #     projects_count = projects.map do |project|
    #         project.requirements.count
    #     end
    #     max = projects_count.max
        
    #     largest_project = projects.find do |project|
    #         project.requirements.count == max
    #     end
    #     largest_project
     end
end
