class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :title
      t.string :academictitle
      t.string :lastname
      t.string :firstname
      t.string :street
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :phone
      t.string :fax
      t.string :mobil
      t.string :email
      t.string :taxnumber
      t.string :paymentterms
      t.string :customergroup
      t.string :taxcode
      t.string :salesman
      t.text :comment
      t.string :deletionflag
      t.string :contactperson
      t.string :discount
      t.text :consignee
      t.string :currency
      t.integer :user_id

      t.timestamps
    end
  end
end
