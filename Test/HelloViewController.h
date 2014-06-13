//
//  HelloViewController.h
//  Test
//
//  Created by Dam Van Thien on 6/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController1.h"
#import "CustomCell.h"
#import "Shop.h"

@interface HelloViewController : UIViewController {
    IBOutlet UITableView *tableView2;
    TableViewController1 *datasource;
    MyView *myView;
    Shop *shop;
}

@property (nonatomic,retain) UITableView *tableView2;

-(IBAction)showMessage;
- (void)gotoNext;
@end
