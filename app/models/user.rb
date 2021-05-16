class User < ApplicationRecord
    
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, :session_token, presence: true
    validates :password, length: {minimum: 6}, allow_nil: true
    validates :username, length: {maximum: 15}

    has_one_attached :photo

    has_many :watched_lists,
    primary_key: :id,
    foreign_key: :watcher_id,
    class_name: :Watchlist

    has_many :episodes,
    through: :watched_lists,
    source: :episode

    has_many :comments,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: :Comment



    after_initialize :ensure_session_token 

    attr_reader :password

   def self.find_by_credentials(email, password)
        user = User.find_by( email: email)
        return nil unless user 
        user.is_password?(password) ? user : nil 
    end

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
        self.save
        self.session_token
    end
end