//
//  AppDelegate.h
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleLoadViewController.h"
#import "CoursLoadViewController.h"
#import "VideoViewController.h"
#import "Commandes.h"
#import "Communautaire.h"
#import "Profil.h"
#import "Apropos.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{    
    UINavigationController *nc1, *nc2, *nc3, *nc4, *nc5, *nc6, *nc7;
    SampleLoadViewController *vc1;
    CoursLoadViewController *vc2;
    VideoViewController *vc3;
    Commandes *vc4;
    Communautaire *vc5;
    Profil *vc6;
    Apropos *vc7;
     
    UITabBarController *tbc;
}
@property (strong, nonatomic) UIWindow *window;

@end
