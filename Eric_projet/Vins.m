//
//  Vins.m
//  Eric_projet
//
//  Created by Élèves on 09/10/12.
//
//

#import "Vins.h"

@interface Vins ()

@end

@implementation Vins

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) selectFirstViewControllerOfListe:(id)sender {
    UITabBarController *tabController = self.tabBarController; // Sélection de l’onglet le plus à gauche
    tabController.selectedIndex = 0;
}
- (void) selectFirstViewController:(id)sender {
    UITabBarController *tabController = self.tabBarController;
    // Retrouver le contrôleur de la classe FirstViewController
    // On parcourt le tableau des contrôleurs
    UIViewController *controllerToSelect = nil;
    for (UIViewController *controller in tabController.viewControllers)
        if([controller isKindOfClass:NSClassFromString(@"FirstViewController")]) {
            controllerToSelect = controller;
            break; // On sort de la boucle
        }
    tabController.selectedViewController = controllerToSelect;
}


@end
