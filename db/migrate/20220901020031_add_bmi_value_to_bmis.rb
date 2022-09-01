class AddBmiValueToBmis < ActiveRecord::Migration[7.0]
  def change
    add_column :bmis, :bmi_value, :float
    add_column :bmis, :bmi_category, :string
    add_column :bmis, :bmi_obeisity, :string
  end
end
