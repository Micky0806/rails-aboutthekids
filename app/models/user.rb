class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
         has_many :children, dependent: :destroy
         has_many :bookings, through: :children, dependent: :destroy
         has_many :activities, dependent: :destroy
         has_many :orders, through: :activities, dependent: :destroy, class_name: 'bookings'

  def self.find_for_facebook_oauth(auth)
    where(email: auth.info.email).first_or_create do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]  # Fake password for validation
    user.first_name = auth.info.first_name
    user.last_name = auth.info.last_name
    user.picture = auth.info.image
    user.token = auth.credentials.token
    user.token_expiry = Time.at(auth.credentials.expires_at)
    end
end
end
