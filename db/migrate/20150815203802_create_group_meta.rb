class CreateGroupMeta < ActiveRecord::Migration
  def change
    create_table :group_meta do |t|
      t.integer :group_id
      t.string :meta_key
      t.text :meta_value
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
