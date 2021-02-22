class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :user
      t.string :city
      t.string :street

      t.timestamps
    end
  end
end
