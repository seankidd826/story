class AddContentsToMomstories < ActiveRecord::Migration
  def change
    add_column :momstories, :content2, :text
  end
end
