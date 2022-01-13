class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :value
      t.date :due_date
      t.references :enrollment, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
