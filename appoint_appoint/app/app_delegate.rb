class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'Login'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible
    
    @text_field_username = UITextField.alloc.initWithFrame(CGRectZero)
    @text_field_username.borderStyle = UITextBorderStyleRoundedRect
    @text_field_username.textAlignment = UITextAlignmentCenter
    @text_field_username.placeholder = "Username"
    @text_field_username.frame = [CGPointZero, [300,32]]
    @text_field_username.center =
    [@window.frame.size.width / 2, @window.frame.size.height / 2 - 200]
    
    @text_field_password = UITextField.alloc.initWithFrame(CGRectZero)
    @text_field_password.borderStyle = UITextBorderStyleRoundedRect
    @text_field_password.textAlignment = UITextAlignmentCenter
    @text_field_password.placeholder = "Password"
    @text_field_password.frame = [CGPointZero, [300,32]]
    @text_field_password.center =
    [@window.frame.size.width / 2, @window.frame.size.height / 2 - 150]
    
    @button = UIButton.buttonWithType(UIButtonTypeSystem)
    @button.setTitle("Submit", forState:UIControlStateNormal)
    
    @button.frame = [[
    @text_field_password.frame.origin.x,
    @text_field_password.frame.origin.y + @text_field_username.frame.size.height + 10
    ],
    @text_field_username.frame.size]
    @window.addSubview(@button)
    @button.addTarget(self,
                      action:"attempt_login",
                      forControlEvents:UIControlEventTouchUpInside)
    
    @window.addSubview(@text_field_password)
    @window.addSubview(@text_field_username)
    
    hi = "hey"
    
    puts hi

    true
  end
  
  def attempt_login
      @text_field_password.text = given_password
      @text_field_username.text = given_username
  end
end
