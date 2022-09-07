class CreateNonTeches < ActiveRecord::Migration[7.0]
  def change
    create_table :non_teches do |t|
      t.string :name
      t.string :email
      t.string :office
      t.string :phone
      t.string :vehicle_no
      t.string :adhar_no
      t.string :license
      t.string :employee_no

      t.timestamps
    end
  end
end
