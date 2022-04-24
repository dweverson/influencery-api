class AddPrimaryTagToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :primary_tag_id, :bigint
    add_foreign_key :influencers, :tags, column: :primary_tag_id
  end
end
