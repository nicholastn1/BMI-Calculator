class CreateBmis < ActiveRecord::Migration[7.0]
  def change
    create_table :bmis do |t|
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
