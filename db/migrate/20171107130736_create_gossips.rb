class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
    	t.string :title
    	t.text :content
    	t.date :creation_date
    	t.references :moussaillon, foreign_key: true

      t.timestamps
    end
  end
end
