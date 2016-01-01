class User < ActiveRecord::Base

  # Before you save a user, make the email downcase.
  # Validation rule that name must be present.
  # REGEX here's the breakdown of how this one works:
  #         '/' starts the regex
  #         '\A' matches the start of a string
  #         '[\w+\-.]+' looks for at least one word character, plus,
  #            hyphen, or dot
  #         '@' is a literal "at sign"
  #         '[a-z\d\-.]+' looks for at least one letter, digit, hyphen,
  #            or dot
  #         '\.' is a literal dot
  #         '\z' matches the end of a string
  #         '/' end of regex
  #         '\.' case-insensitive
  # Validation rule that email must be present, the length must be less
  # than 255 characters, and fit the regex format defined above.
  # Has_secure_password lets you to store passwords as password_digest,
  # creates "password" and "password confirm" vars and creates an
  # authentication method.
  # Validation rule that password must be present and that it's at least
  # 6 characters long.

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                                    format: { with: VALID_EMAIL_REGEX },
                                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }






  # before_save { self.email = email.downcase }
  # validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  # has_secure_password
  # validates :password, presence: true, length: { minimum: 1 }

  # I do not understand exactly what this code is, but I know it
  # encrpyts passwords
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
