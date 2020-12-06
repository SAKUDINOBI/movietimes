class CreateCcards < ActiveRecord::Migration[6.0]
  def change
    create_table :ccards do |t|
      t.string :card_issuer
      t.integer :card_number
      t.string :name_on_card
      t.string :exp_date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
