class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
    	t.string :specialty
      t.timestamps
    end
  end
end
