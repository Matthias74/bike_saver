class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :category
      t.string :address
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
