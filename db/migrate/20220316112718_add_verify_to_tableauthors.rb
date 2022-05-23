class AddVerifyToTableauthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :verify, :string
  end
end
