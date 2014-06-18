class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :title
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
