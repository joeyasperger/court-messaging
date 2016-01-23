in the add_devise_to_admins migration:

I uncommented     
	add_index :admins, :confirmation_token,   unique: true
    add_index :admins, :unlock_token,         unique: true

They let you configure the self.down section so do that at some point maybe
Add root to routes so that we go to the right page after logging in