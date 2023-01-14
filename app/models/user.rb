class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  has_one :user_about
  after_create :create_user_about

  def create_user_about
    UserAbout.create!(user_id: self.id)
  end
end
