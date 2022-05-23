class ChangeDateToBeStringInAuthors < ActiveRecord::Migration[6.1]
  def change
      change_column :authors, :date, :string
  end
end
