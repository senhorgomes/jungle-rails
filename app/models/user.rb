class User < ActiveRecord::Base

  has_secure_password
  
  validates :name, presence: true
  validates :password_digest, length: { minimum: 6}
  validates :email, presence: true

  before_save :downcase_email

  def downcase_email
    self.email.downcase!
  end
end
