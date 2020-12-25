class Deadline < ApplicationRecord
    belongs_to :project
    belongs_to :requirement

    scope :incomplete_statuses, -> { where("completed == false") }
end