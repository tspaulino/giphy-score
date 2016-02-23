class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :giphy_id
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
