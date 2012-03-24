class AddColumnToArgumentNodes < ActiveRecord::Migration
  def change
    add_column :argument_nodes, :explanation, :text

    add_column :argument_nodes, :kind, :string

  end
end
