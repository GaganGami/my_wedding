class CreateMemories < ActiveRecord::Migration[5.1]
  def change
    create_table :memories do |t|
      t.string :name
      t.date :memory_date

      t.timestamps
    end
  end
end
