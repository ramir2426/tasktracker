class Task < ApplicationRecord
  has_many :tags
  has_many :comments

  has_many_attached :attachmnets

  #define priorties type
  def self.priority
    ["Low", "Middle", "High", "Critical", "Urgent", "RTH"]
  end
  #define priorties type
  def self.status
    %w[New Investigation Coding Implemented Testing Rework Tested Closed Canceled]
  end

  #for searching
  scope :search, ->(params) do
    where("cast(id as text) LIKE ? OR summary LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
  end

  #get specific types of tasks
  scope :tasks, -> (params) do
    logger.debug 
    where("cast(id as project) LIKE ?", "%#{params[:project]}%")
      .where(
        if params[:status]
          params[:status].map { |s| "status LIKE '%#{s}%' or "}.join()[0...-4]
        end
      )
      .where("priority LIKE '%#{params[:priority]}%'")
  end
end
