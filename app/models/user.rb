class User < ApplicationRecord
  has_many :comments
  has_many :articles, dependent: :destroy

  has_secure_password

  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX,
                           message: "is not a valid" }
end
