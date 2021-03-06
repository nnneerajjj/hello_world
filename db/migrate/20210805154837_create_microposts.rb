# frozen_string_literal: true

class CreateMicroposts < ActiveRecord::Migration[6.0]
  def change
    create_table :microposts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end

    add_index :microposts, %i[user_id created_at]
  end
end
