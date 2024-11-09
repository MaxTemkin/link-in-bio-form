Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("backdoor", { :controller => "items", :action => "links" })
  get("insert_item", { :controller => "items", :action => "new_items"})

end
