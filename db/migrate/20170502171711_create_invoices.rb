class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth

      t.timestamps
    end
  end
end
