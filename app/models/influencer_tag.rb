class InfluencerTag < ApplicationRecord
  belongs_to :influencer
  belongs_to :tag

  validates :tag_id, uniqueness: { scope: :influencer_id}
end
