class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation,
    :remember_me
  
  has_many :points_given, :class_name => 'PointDelta',
    :inverse_of => :from_user
  has_many :points_received, :class_name => 'PointDelta',
    :inverse_of => :to_user
  has_many :point_balances
end
