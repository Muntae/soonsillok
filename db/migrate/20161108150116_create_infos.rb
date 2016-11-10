class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      
      t.integer :post_id
      t.string :info
      t.string :link

      t.timestamps null: false
    end
  end
end
