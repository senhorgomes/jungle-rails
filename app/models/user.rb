class User < ActiveRecord::Base

  has_secure_password
  
  validates :name, presence: true
  validates :password, length: { minimum: 6}
  validates :email, presence: true

  before_save :filtered_email

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip.downcase!)
    user && user.authenticate(password)
  end

  def filtered_email
    self.email = self.email.strip.downcase!
  end
end
