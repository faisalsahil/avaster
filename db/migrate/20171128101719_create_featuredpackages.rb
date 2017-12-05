class CreateFeaturedpackages < ActiveRecord::Migration[5.0]
  def change
    create_table :featuredpackages do |t|
      t.integer :days
      t.integer :coins_required
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
