class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :phone
      t.string :roll_no
      t.string :vehicle_no
      t.string :adhar_no
      t.string :license

      t.timestamps
    end
  end
end
