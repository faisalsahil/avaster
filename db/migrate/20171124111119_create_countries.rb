class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :alpha2_code
      t.string :alpha3_code
      t.string :calling_code
      t.string :flag_url
      t.boolean :is_avaster_supported, default: true
      t.boolean :is_active, default: true
      
      t.timestamps
    end
  end
end
