class CreateAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisements do |t|
      t.string :name

      t.timestamps
    end
  end
end
