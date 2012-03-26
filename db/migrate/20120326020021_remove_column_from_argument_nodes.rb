class RemoveColumnFromArgumentNodes < ActiveRecord::Migration
  def up
    remove_column :argument_nodes, :description
        remove_column :argument_nodes, :type
      end

  def down
    add_column :argument_nodes, :type, :string
    add_column :argument_nodes, :description, :string
  end
end
