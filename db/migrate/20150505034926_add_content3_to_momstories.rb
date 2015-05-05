class AddContent3ToMomstories < ActiveRecord::Migration
  def change
    add_column :momstories, :content3, :text
  end
end
