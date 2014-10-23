class AddColumnSort < ActiveRecord::Migration
  def up
    add_column :words, :sorted, :string


  end
end
