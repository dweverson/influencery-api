class Tag < ApplicationRecord
    has_many :influencer_tags
    has_many :inf_primary_tags, class_name: "Influencer", foreign_key: :primary_tag_id

    validates :name, presence: true
end
