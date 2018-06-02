class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :rating
      t.text :review
      t.references :professor, foreign_key: true
      t.references :classroom, foreign_key: true

      t.timestamps
    end
  end
end
