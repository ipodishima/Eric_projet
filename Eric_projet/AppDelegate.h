//
//  AppDelegate.h
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataListViewController.h"
#import "VideoViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    DataListViewController *_dataListViewController;
    UINavigationController *_navController;
    
    UINavigationController *nc1, *nc2;
    DataListViewController *vc1;
    VideoViewController *vc2;
    UITabBarController *tbc;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
