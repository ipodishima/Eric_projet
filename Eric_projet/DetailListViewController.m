//
//  DetailListViewController.m
//  Eric_projet
//
//  Created by Élèves on 15/01/13.
//
//

#import "DetailListViewController.h"

@interface DetailListViewController ()

@end

@implementation DetailListViewController
@synthesize texteAAfficher = _texteAAfficher;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)]; [self.view addSubview:_label];
    _label.text = _texteAAfficher;
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

@end
