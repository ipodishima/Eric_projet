//
//  AppDelegate.m
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
  
    nc1 = [[UINavigationController alloc] init];
    nc1.title= @"Vins";
    vc1 = [[SampleLoadViewController alloc] initWithNibName:nil bundle:nil];
    vc1.navigationItem.title = @"Vins";
    nc1.viewControllers = [NSArray arrayWithObjects:vc1, nil];
    
    nc2 = [[UINavigationController alloc] init];
    nc2.title= @"Cours";
    vc2 = [[CoursLoadViewController alloc] initWithNibName:nil bundle:nil];
    vc2.navigationItem.title = @"Cours";
    nc2.viewControllers = [NSArray arrayWithObjects:vc2, nil];
    
    nc3 = [[UINavigationController alloc] init];
    nc3.title= @"Video";
    vc3 = [[VideoViewController alloc] initWithNibName:nil bundle:nil];
    vc3.navigationItem.title = @"Video";
    nc3.viewControllers = [NSArray arrayWithObjects:vc3, nil];
    
    nc4 = [[UINavigationController alloc] init];
    nc4.title= @"Commandes";
    vc4 = [[Commandes alloc] initWithNibName:nil bundle:nil];
    vc4.navigationItem.title = @"Commandes";
    nc4.viewControllers = [NSArray arrayWithObjects:vc4, nil];
    
    nc5 = [[UINavigationController alloc] init];
    nc5.title= @"Communautaire";
    vc5 = [[Communautaire alloc] initWithNibName:nil bundle:nil];
    vc5.navigationItem.title = @"Communautaire";
    nc5.viewControllers = [NSArray arrayWithObjects:vc5, nil];
    
    nc6 = [[UINavigationController alloc] init];
    nc6.title= @"Profil";
    vc6 = [[Profil alloc] initWithNibName:nil bundle:nil];
    vc6.navigationItem.title = @"Profil";
    nc6.viewControllers = [NSArray arrayWithObjects:vc6, nil];
    
    nc7 = [[UINavigationController alloc] init];
    nc7.title= @"A propos";
    vc7 = [[Apropos alloc] initWithNibName:nil bundle:nil];
    vc7.navigationItem.title = @"A propos";
    nc7.viewControllers = [NSArray arrayWithObjects:vc7, nil];
    
    tbc = [[UITabBarController alloc] init];
    tbc.viewControllers = [NSArray arrayWithObjects:nc1, nc2, nc3,nc4,nc5,nc6,nc7, nil];
    
    [self.window setRootViewController:tbc];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
