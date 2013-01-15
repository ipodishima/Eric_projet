//
//  AppDelegate.h
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleLoadViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    SampleLoadViewController *_sampleLoadViewController;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
