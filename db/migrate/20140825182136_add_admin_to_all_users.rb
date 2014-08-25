class AddAdminToAllUsers < ActiveRecord::Migration
  def change
    r = Role.find_by_name("admin")
    User.all.each{|u| u.roles << r}
  end
end
