# frozen_string_literal: true

class AddListsTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :lists_todos, id: false do |t|
      t.integer :list_id
      t.integer :todo_id
    end
  end
end
