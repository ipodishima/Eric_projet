//
//  AppDelegate.h
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VinViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UITabBarController *_tabBarController;
    VinViewController *vinViewController;
    UIWindow *window;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (nonatomic,retain)VinViewController *vinViewController;

@end
