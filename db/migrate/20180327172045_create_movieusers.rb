class CreateMovieusers < ActiveRecord::Migration[5.1]
  def up
    create_table 'movieusers' do |t|
      t.integer 'info'
      t.string 'name'
      t.string 'provider'
      t.string 'uid'
      t.datetime 'created_at'
      t.datetime 'updated_at'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
  def down
    drop_table 'movieusers' # deletes the whole table and all its data!
  end
end
