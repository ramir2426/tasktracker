class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Associations 
  has_one_attached :avatar
  belongs_to :team

 def self.roles
  ["Tester", "Developer", "BA", "TST Manager", "DEV Manager"]
 end

  #User searching funtion
  scope :search, -> (params) do
        where("email LIKE ?", "%#{params[:email]}%").
        where("name LIKE ?", "#{params[:name]}%").
        where("role LIKE ?", "#{params[:role]}%").
        where("team_id LIKE ?", "#{params[:team]}%").
        where("active LIKE ?", "#{params[:active]}%")
  end

  #Check user online or not
  def online?
    self.updated_at > 10.minutes.ago
  end
end