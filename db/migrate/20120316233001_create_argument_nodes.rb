class CreateArgumentNodes < ActiveRecord::Migration
  def change
    create_table :argument_nodes do |t|

      t.timestamps
    end
  end
end
