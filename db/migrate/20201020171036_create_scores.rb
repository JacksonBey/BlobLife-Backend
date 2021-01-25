class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.text :time
      t.references :user, null: false, foreign_key: true
      t.references :leaderboard, null: false, foreign_key: true
      t.text :date
      t.text :blobtype
      t.timestamps
    end
  end
end
