Rails.application.routes.draw do

# Home page

### Routes for Directors
#CREATE
get('/directors/new_form' , { :controller  => 'directors', :action => 'create'})
get('/create_director' , { :controller  => 'directors', :action => 'create_row'})

# READ
get('/directors/', { :controller  => 'directors', :action => 'index'})
get("/directors/:id", { :controller  => 'directors', :action => 'details'} )

#UPDATE
get('/directors/:id/edit_form', { :controller  => 'directors', :action => 'update'})

# DELETE
get("/delete_director/:id", { :controller  => 'directors', :action => 'details'})



end
