Rails.application.routes.draw do



  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Assignment type resource:

  # CREATE
  post("/insert_assignment_type", { :controller => "assignment_types", :action => "create" })
          
  # READ
  
  get("/assignment_types", { :controller => "assignment_types", :action => "index" })
  
  get("/assignment_types/:path_id", { :controller => "assignment_types", :action => "show" })
  
  # UPDATE
  
  post("/modify_assignment_type/:path_id", { :controller => "assignment_types", :action => "update" })
  
  # DELETE
  get("/delete_assignment_type/:path_id", { :controller => "assignment_types", :action => "destroy" })

  #------------------------------

  # Routes for the Assignment resource:

  # CREATE
  post("/insert_assignment", { :controller => "assignments", :action => "create" })
          
  # READ
   get("/", { :controller => "assignments", :action => "index" })
  get("/assignments", { :controller => "assignments", :action => "index" })
  
  get("/assignments/:path_id", { :controller => "assignments", :action => "show" })
  
  # UPDATE
  
  post("/modify_assignment/:path_id", { :controller => "assignments", :action => "update" })
  
  # DELETE
  get("/delete_assignment/:path_id", { :controller => "assignments", :action => "destroy" })

  #------------------------------

  # Routes for the Course resource:

  # CREATE
  post("/insert_course", { :controller => "courses", :action => "create" })
          
  # READ
  get("/courses", { :controller => "courses", :action => "index" })
  
  get("/courses/:path_id", { :controller => "courses", :action => "show" })
  
  # UPDATE
  
  post("/modify_course/:path_id", { :controller => "courses", :action => "update" })
  
  # DELETE
  get("/delete_course/:path_id", { :controller => "courses", :action => "destroy" })

  #------------------------------

end
