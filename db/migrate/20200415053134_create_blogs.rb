class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.date :published_date
      t.string :url

      t.timestamps
    end
  end
end
