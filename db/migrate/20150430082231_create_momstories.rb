class CreateMomstories < ActiveRecord::Migration
  def change
    create_table :momstories do |t|

      t.text :content

      t.timestamps null: false
    end

    add_attachment :momstories, :image

  end
end
