Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:root", { :controller => "calculations", :action => "square_root" })

  get("/random/:start/:end", { :controller => "calculations", :action => "random" })

  get("/payment/:rate/:years/:principal", { :controller => "calculations", :action => "payment" })
end
