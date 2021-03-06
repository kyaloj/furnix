class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :shops
	has_many :comments, through: :furniture
	has_attached_file :avatar
    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    validates_presence_of :name
end
