class RecordTable < ActiveRecord::Migration[5.2]
  def up
	  create_table :records do |t|
	  	t.references :classroom, foreign_key: true
	  	t.references :professor, foreign_key: true
	    t.timestamps
    end
  end
end
