class AddListIdToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :list_id, :integer, foreign_key: true
  end
end
