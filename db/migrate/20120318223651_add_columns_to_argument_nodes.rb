class AddColumnsToArgumentNodes < ActiveRecord::Migration
  def change
    add_column :argument_nodes, :description, :string

    add_column :argument_nodes, :type, :string

  end
end
