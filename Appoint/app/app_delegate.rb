class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
      
      # LOADING SCREEN
      @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
      @window.makeKeyAndVisible
      
      
      # REDIRECT TO AUTH CONTROLLER
      
      @window.rootViewController =
      authController.alloc.initWithNibName(nil, bundle: nil)
      
    true
  end
end
