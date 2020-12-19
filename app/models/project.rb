class Project < ApplicationRecord
has_many :deadlines
has_many :requirements, through: :deadlines
 belongs_to :user
 
accepts_nested_attributes_for :requirements


    # def project_requirements_attributes=(requirement_attributes)
    #      binding.pry
    #     requirement_attributes.values.each do |requirement_attribute|
    #     if requirement_attribute[:description] != "" && requirement_attribute[:priority] != ""
    #         requirement = Requirement.find_or_create_by(requirement_attribute)
    #         self.requirements << requirement
    #     end
    #     end
    # end
end
