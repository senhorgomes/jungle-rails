class User < ActiveRecord::Base

  has_secure_password
  
  validates :name, presence: true
  validates :password_digest, length: { minimum: 6}
  validates :email, presence: true

  before_save :filtered_email

  def filtered_email
    self.email = self.email.strip.downcase!
  end
end
