class CreateNarratives < ActiveRecord::Migration
  def change
    create_table :narratives do |t|
      t.text :story
      t.string :title
      t.integer :writer_id
      t.timestamps
    end
  end
end
