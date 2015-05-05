class AddContent4ToMomstories < ActiveRecord::Migration
  def change
    add_column :momstories, :content4, :text
  end
end
