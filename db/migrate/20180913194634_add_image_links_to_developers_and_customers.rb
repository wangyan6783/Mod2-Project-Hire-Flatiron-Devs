class AddImageLinksToDevelopersAndCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :developers, :image_link, :string
    add_column :customers, :image_link, :string
  end
end
