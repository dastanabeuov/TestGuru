class Feedbacks < ActiveRecord::Migration[5.2]
  def change
  	create_table :feedbacks do |t|
  		t.string :text, null: false

  		t.timestamps
  	end
  end
end
