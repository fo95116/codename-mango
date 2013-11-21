class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote_type
      t.integer :narrative_id
      t.integer :writer_id
      t.timestamps
    end
  end
end
