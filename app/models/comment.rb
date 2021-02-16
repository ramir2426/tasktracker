class Comment < ApplicationRecord
#relationship with comment
  belongs_to :user
  belongs_to :task
end
