class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.decimal :total_value, null: false
      t.integer :max_payment, null: false
      t.integer :payment_due_date, null: false
      t.string :course_name, null: false
      t.references :institution, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
