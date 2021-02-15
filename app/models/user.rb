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
        where("cast(email as text) LIKE ?", "%#{params[:email]}%").
        where("cast(name as text) LIKE ?", "#{params[:name]}%").
        where("cast(role as text) LIKE ?", "#{params[:role]}%").
        where("cast(team_id as text) LIKE ?", "#{params[:team]}%").
        where("cast(active as text) LIKE ?", "#{params[:active]}%")
  end

  #Check user online or not
  def online?
    self.updated_at > 10.minutes.ago
  end
end