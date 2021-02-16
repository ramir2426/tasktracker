class Tag < ApplicationRecord
  #relation with task
  belongs_to :task
  #validations for tag
  validates :tag, presence: true
end
