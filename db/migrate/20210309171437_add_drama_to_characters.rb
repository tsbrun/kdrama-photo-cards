class AddDramaToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :drama, null: false, foreign_key: true
  end
end
