class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :role
      t.string :gender
      t.string :img_url
      t.string :wiki_url

      t.timestamps
    end
  end
end
