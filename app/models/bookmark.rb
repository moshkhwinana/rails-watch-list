class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6, message: 'Should not be shorter than 6 characters' }
  validates :list_id, uniqueness: { scope: :movie_id }
end
