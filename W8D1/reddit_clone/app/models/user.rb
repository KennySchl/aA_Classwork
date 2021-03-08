require 'bcrypt'

class User < ApplicationRecord
    validates :username, :session_token, presence:true, uniqueness:true
    validates :password, length: {minimum: 6, allow_nil: true}
    validates :password_digest, presence:true

    after_initialize :ensure_session_token

    attr_reader :password

    private 

    def ensure_session_token
        self.session_token ||= SecureRandom.base64(64)
    end

    public

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user && user.is_password?(password)
            return user
        else
            return nil
        end
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom.base64(64)
        self.save!
        self.session_token
    end

end
