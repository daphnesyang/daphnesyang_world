class Article < ApplicationRecord
    # Relationships
  has_many :categories

  # Validations
  validates_presence_of :title
  validates_presence_of :content

  # Scopes
  scope :alphabetical, -> { order('title') }
  scope :active,       -> { where('active = ?', true) }
end
