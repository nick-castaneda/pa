class User < ActiveRecord::Base

  # Sets up one to many relationship with transcripts model and that if
  # a user is destroyed, so are her transcripts.
  has_many :transcripts, dependent: :destroy
  # Validation rule that name must be present and not longer than 50
  validates :name, presence: true, length: { maximum: 50 }
  # Before you save a user, make the email downcase.
  # REGEX. Here's the breakdown of how this one works:
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
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  # Has_secure_password lets you to store passwords as password_digest,
  # creates "password" and "password confirm" vars and creates an
  # authentication method.
  # Validation rule that password must be present and that it's at least
  # 6 characters long.
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }


  # User.digest is a method used in the test fixture to create a valid
  # password digest. The "BCrypt::Password.create" takes in two args, a
  # string, and a cost. The higher the cost, the safer the website, but
  # for tests we set a lower cost for speed.
  # Below, a cost var is set equal to the min cost if true, the normal
  # cost if not. The method then creates a password using the cost var.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
