class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :package_type
      t.decimal :price
      t.integer :screens_allowed

      t.timestamps
    end
  end
end
