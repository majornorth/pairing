class User < ActiveRecord::Base
  attr_accessible :email, :firstName, :lastName, :mobile, :password
  has_and_belongs_to_many :events
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :firstName, presence: true, length: { maximum: 30 }
  validates :lastName, presence: true, length: { maximum: 30 }
  validates :mobile, presence: true, length: { maximum: 15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
  	format: { with: VALID_EMAIL_REGEX }, 
  	uniqueness: { case_sensitive: false }
  	validates :password, presence: true, length: { minimum: 6 }

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
