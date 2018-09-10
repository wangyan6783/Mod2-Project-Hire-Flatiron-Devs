class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.references :developer, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
