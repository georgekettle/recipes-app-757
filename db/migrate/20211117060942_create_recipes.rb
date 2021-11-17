class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :rating, default: 0
      t.string :photo
      t.string :difficulty

      t.timestamps
    end
  end
end
