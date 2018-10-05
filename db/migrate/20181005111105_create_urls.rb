class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :long_url, null: false
      t.string :short_url
      t.references :user, index: true

      t.timestamps
    end
  end
end
