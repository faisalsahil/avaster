class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.string :currency_name
      t.string :iso_code
      t.string :symbol
      t.string :sorder
      t.references :country

      t.timestamps
    end
  end
end
