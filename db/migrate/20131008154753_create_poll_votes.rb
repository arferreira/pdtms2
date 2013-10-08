class CreatePollVotes < ActiveRecord::Migration
  def change
    create_table :poll_votes do |t|
      t.integer :vote
      t.references :poll

      t.timestamps
    end
    add_index :poll_votes, :poll_id
  end
end
