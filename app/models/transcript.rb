class Transcript < ActiveRecord::Base

  # Transcripts belong to users
  # The method default_scope sets the default order to the created_at
  # collumn from newest to oldest (:desc)
  belongs_to :user
  has_many :annotations, dependent: :destroy

  default_scope -> { order(created_at: :desc) }
  # Transcripts are only valid if they have a user_id and content that
  # is no longer than 100,000 characters
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 150000 }

end
