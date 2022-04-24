class Platform < ApplicationRecord
  has_many :influencers

  validates :name, :base_url, presence: true
  validates :base_url, :url => true
end
