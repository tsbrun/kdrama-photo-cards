class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :gender
      t.string :img_url
      t.string :wiki_url

      t.timestamps
    end
  end
end
