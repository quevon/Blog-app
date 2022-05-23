class CreateArticleAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :article_advertisements do |t|
      t.references :article, null: false, foreign_key: true
      t.references :advertisement, null: false, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
