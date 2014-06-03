class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.text :Expectation
      t.datetime :start_time
      t.datetime :end_time
      t.text :Outcome

      t.timestamps
    end
  end
end
