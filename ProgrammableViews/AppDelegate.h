//
//  AppDelegate.h
//  ProgrammableViews
//
//  Created by Yung Dai on 2015-04-15.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
// forward declare ViewController
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
// property for our view controller
@property (strong, nonatomic) ViewController *viewController;



@end

