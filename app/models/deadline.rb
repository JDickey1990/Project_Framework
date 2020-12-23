class Deadline < ApplicationRecord
    belongs_to :project
    belongs_to :requirement

    # validates :deadline, presence: true

     scope :incomplete_statuses, -> { where("completed == false") }

    # Project.joins{:deadlines}.group{:deadline}.where("completed == false")

    # scope :incomplete_statuses, -> { joins(:projects).where("completed == false") }
end