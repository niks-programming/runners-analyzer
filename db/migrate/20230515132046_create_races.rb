class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :distance
      t.string :finish_time 
      # t.attachment :race_medal
      t.string :city 
      t.string :state
      t.date   :race_date
      t.timestamps
    end
  end
end
