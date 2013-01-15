//
//  DetailListViewController.h
//  TableView
//
//  Created by Élèves on 03/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DetailListViewController : UIViewController 
{
    UILabel *_label; 
}

@property (nonatomic, strong) NSString *texteAAfficher;
@property (nonatomic, strong) NSString *texteAAfficher2;

@end
