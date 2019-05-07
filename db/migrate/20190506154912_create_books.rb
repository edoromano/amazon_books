class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :isbn
      t.decimal :average_rating
      t.text :author
      t.text :binding
      t.text :manufacturer
      t.numeric :number_of_items
      t.numeric :number_of_pages
      t.text :product_group
      t.date :publication_date
      t.text :studio
      t.text :title

      t.timestamps
    end
  end
end
