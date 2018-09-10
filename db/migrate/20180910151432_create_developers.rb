class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
