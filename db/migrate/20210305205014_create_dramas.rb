class CreateDramas < ActiveRecord::Migration[6.1]
  def change
    create_table :dramas do |t|
      t.string :title
      t.string :img_url
      t.string :wiki_url

      t.timestamps
    end
  end
end
