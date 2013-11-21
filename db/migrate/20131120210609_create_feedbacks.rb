class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.integer :writer_id
      t.integer :narrative_id
      t.timestamps
    end
  end
end
