class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :number
      t.decimal :price, precision: 8, scale: 2
      t.integer :vat_rate
      t.datetime :issued_at
      t.references :client, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
