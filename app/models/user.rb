class User < ActiveRecord::Base

  # validation rule that name must be present
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
  # validation rule that email must be present, the length must be less
  # than 255 characters, and fit the regex format defined above.


  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                                    format: { with: VALID_EMAIL_REGEX },
                                    uniqueness: { case_sensitive: false }





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
