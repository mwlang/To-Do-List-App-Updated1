class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :can_create, default: false
      t.boolean :can_read, default: false
      t.boolean :can_update, default: false
      t.boolean :can_delete, default: false

      t.timestamps
    end
  end
end
