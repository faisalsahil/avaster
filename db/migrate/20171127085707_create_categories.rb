class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string  :category_title
      t.integer :parent_id
      t.integer :coins_required
      t.integer :free_listing_allowed
      t.integer :free_month_duration
      t.integer :paid_month_duration
      t.boolean :is_restricted,       default:true
      t.boolean :is_active,           default: true

      t.timestamps
    end
  end
end
