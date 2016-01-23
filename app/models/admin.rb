class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #should we include omniauthable? Info here https://github.com/intridea/omniauth
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :lockable, :timeoutable
	belongs_to :court
	has_many :users 
	has_many :hearings, :through => :users
	has_many :messages, :through => :hearings
	#example: has_many :messages, :through => :hearings
end
