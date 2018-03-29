class CreateMovieusers < ActiveRecord::Migration[5.1]
  def change
    create_table :movieusers do |t|
      t.integer 'id'
      t.string 'name'
      t.string 'provider'
      t.string 'iud'
      t.datetime 'created_at'
      t.datetime 'updated_at'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
