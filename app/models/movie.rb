class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :movies
  # belongs_to :list
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
