in the add_devise_to_admins migration:

I uncommented     
	add_index :admins, :confirmation_token,   unique: true
    add_index :admins, :unlock_token,         unique: true

They let you configure the self.down section so do that at some point maybe

Add root to routes so that we go to the right page after logging in


to make customizing views possible, had to go into config/initializers/devise.rb, uncomment config.scoped_views = false, and set it to true.



was reading this paragraph when left off
"The above works for any additional fields where the parameters are simple scalar types. If you have nested attributes (say you're using accepts_nested_attributes_for), then you will need to tell devise about those nestings and types. Devise allows you to completely change Devise defaults or invoke custom behaviour by passing a block:
To permit simple scalar values for username and email, use this"



