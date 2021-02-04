class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  after_create :create_profile
  has_many :houses       
  has_many :reservations

  devise :omniauthable, omniauth_providers: %i[facebook]
end
                                                                                                                                                                                                                                                                                                                                                                                                                                          