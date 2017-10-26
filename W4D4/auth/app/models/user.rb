class User < ApplicationRecord


  validates :username, presence: true
  validates :session_token, presence: true
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return nil if user.nil?
    BCrypt::Password.new(user.password_digest).is_password?(password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def password=(pswd)
    @password = pswd
    self.password_digest = BCrypt::Password.create(password)
    self.save!
  end

  private
  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end


end
