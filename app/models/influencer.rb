class Influencer < ApplicationRecord
  belongs_to :platform
  has_many :influencer_tags
  has_many :tags, through: :influencer_tags
  belongs_to :primary_tag, class_name: "Tag"

  validates :followers, :handle, presence: true
  validates :profile_pic_url, :url => true
  validates :platform_id, uniqueness: { scope: :handle }

end
