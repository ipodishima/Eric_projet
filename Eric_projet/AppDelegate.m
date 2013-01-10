//
//  AppDelegate.m
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Vins.h"
#import "Commandes.h"
#import "Communautaire.h"
#import "Profil.h"
#import "Apropos.h"

#import "YouTubeViewController.h"
#import "LocalFileViewController.h"
#import "WineViewController.h"
#import "PerformancesViewController.h"
#import "VideoViewController.h"
#import "SampleLoadViewController.h"
#import "CoursLoadViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor purpleColor];
    [self.window makeKeyAndVisible];
    self.tabBarController = [[UITabBarController alloc] init];
 
    //UIImage *bouteille = [[UIImage alloc] initWithContentsOfFile:@"bouteille.png"];
    SampleLoadViewController *vins = [[SampleLoadViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *navControllerSample = [[UINavigationController alloc] initWithRootViewController:vins];
    UITabBarItem *tabBarItem1 = [[UITabBarItem alloc] initWithTitle:@"Vins"
                                                              image:nil
                                                                tag:5];
    vins.title = @"Vins";
    navControllerSample.tabBarItem = tabBarItem1;
    
    CoursLoadViewController *cours = [[CoursLoadViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *navControllerCours = [[UINavigationController alloc] initWithRootViewController:cours];
    UITabBarItem *tabBarItem3 = [[UITabBarItem alloc] initWithTitle:@"Cours"
                                                              image:nil
                                                                tag:3];
    cours.title = @"Cours";
    navControllerCours.tabBarItem = tabBarItem3;
     
    Commandes *commandes = [[Commandes alloc] initWithNibName:@"Commandes" bundle:nil];
    commandes.title = @"Commandes";
    
    VideoViewController *video = [[VideoViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *navControllerVideo = [[UINavigationController alloc] initWithRootViewController:video];
    UITabBarItem *tabBarItem5 = [[UITabBarItem alloc] initWithTitle:@"Video"
                                                              image:nil
                                                                tag:4];
      navControllerVideo.tabBarItem = tabBarItem5;
    
    Communautaire *communautaire = [[Communautaire alloc] initWithNibName:@"Communautaire" bundle:nil];
    communautaire.title = @"Amis";
    
    Profil *profil = [[Profil alloc] initWithNibName:@"Profil" bundle:nil];
    profil.title = @"Profil";
    
    Apropos *apropos = [[Apropos alloc] initWithNibName:@"APropos" bundle:nil];
    apropos.title = @"A Propos";
    
  /*  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:cours];
    navigationController.title = @"Cours";
    [navigationController setNavigationBarHidden:NO];*/
    
    _tabBarController.viewControllers = [NSArray arrayWithObjects:vins, cours, commandes, navControllerVideo, communautaire, profil, apropos, nil];
    
    [self.window setRootViewController:_tabBarController];
    [_tabBarController.tabBar setTintColor:[UIColor blueColor]];
    [_tabBarController.tabBar setSelectedImageTintColor:[UIColor whiteColor]];
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
