class Deadline < ApplicationRecord
    belongs_to :project
    belongs_to :requirement

    scope :incomplete_statuses, -> { where("completed == false") }
    
    def time
        deadline.strftime("%A, %d %b %Y %l:%M %p")
    end
end