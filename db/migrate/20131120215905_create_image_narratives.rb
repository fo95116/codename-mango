class CreateImageNarratives < ActiveRecord::Migration
  def change
    create_table :image_narratives do |t|
      t.integer :narrative_id
      t.integer :image_id
      t.timestamps
    end
  end
end
