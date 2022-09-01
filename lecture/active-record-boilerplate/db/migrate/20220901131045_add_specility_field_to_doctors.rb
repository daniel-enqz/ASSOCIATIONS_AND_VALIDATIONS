class AddSpecilityFieldToDoctors < ActiveRecord::Migration[7.0]
  def change
      add_column :doctors, :speciality, :string
  end
end
