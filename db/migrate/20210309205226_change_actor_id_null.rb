class ChangeActorIdNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :characters, :actor_id, true
  end
end
