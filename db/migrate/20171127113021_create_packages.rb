class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :package_title
      t.integer :coins
      t.integer :free_coins
      t.integer :price
      t.references :country, foreign_key: true
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
