class User < ActiveRecord::Base
  has_many :authentications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.facebook auth
    @facebook ||= Koala::Facebook::API.new(auth)
  end
end
