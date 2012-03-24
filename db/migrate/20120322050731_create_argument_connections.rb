class CreateArgumentConnections < ActiveRecord::Migration
  def change
    create_table :argument_connections do |t|
      t.integer :source_argument_id
      t.integer :target_argument_id
      t.string :kind

      t.timestamps
    end
  end
end
