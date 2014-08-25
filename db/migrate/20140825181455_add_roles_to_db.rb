class AddRolesToDb < ActiveRecord::Migration
  def change
    Role.create(name: "admin", can_create: true, can_read: true, can_update: true, can_delete: true)
    Role.create(name: "moderator", can_create: false, can_read: true, can_update: true, can_delete: true)
    Role.create(name: "author", can_create: true, can_read: true, can_update: false, can_delete: false)
    Role.create(name: "banned", can_create: false, can_read: false, can_update: false, can_delete: false)
  end
end
