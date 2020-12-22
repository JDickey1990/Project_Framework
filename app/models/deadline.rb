class Deadline < ApplicationRecord
    belongs_to :project
    belongs_to :requirement

    validates :deadline, presence: true
end