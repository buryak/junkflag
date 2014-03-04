class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :location

      t.timestamps
    end
  end
end
