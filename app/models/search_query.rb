class SearchQuery < ApplicationRecord
  validates :term, presence: true
end
