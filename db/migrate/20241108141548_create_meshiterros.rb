class CreateMeshiterros < ActiveRecord::Migration[6.1]
  def change
    create_table :meshiterros do |t|

      t.timestamps
    end
  end
end
