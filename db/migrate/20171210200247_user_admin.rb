class UserAdmin < ActiveRecord::Migration[5.1]
  def change
	user = User.find_by(id: 1)
	user.admin = true
  end
end
