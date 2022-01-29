class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.integer :price_per_date
      t.date :start_available_date
      t.date :end_available_date

      t.timestamps
    end
  end
end
