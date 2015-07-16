class User < ActiveRecord::Base
# before_action :authenticate_user!
has_many :schools, dependent: :destroy
has_many :programs, dependent: :destroy

Default_Email = "notwitteremail@fake.com"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter]

         # validates :email, presence: true, uniqueness: true, format:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  def full_name
    "#{first_name} #{last_name}".strip.squeeze(" ")
  end


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.first_name = auth.info.name.split[0]   # assuming the user model has a name
      user.last_name = auth.info.name.split[1]
      user.email = Default_Email
      user.password = SecureRandom.hex
    end
  end
      # user.password = Devise.friendly_token[0,20]
      # user.email = auth.info.email

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.twitter_data"] && session["devise.twitter_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end



end
