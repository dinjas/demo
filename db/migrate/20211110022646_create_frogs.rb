class CreateFrogs < ActiveRecord::Migration[6.1]
  def change
    create_table :frogs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
