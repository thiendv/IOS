//
//  MyView.m
//  Test
//
//  Created by Dam Van Thien on 6/13/14.
//  Copyright (c) 2014 Dam Van Thien. All rights reserved.
//

#import "MyView.h"

@interface MyView ()

@end

@implementation MyView


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil withShop:(Shop*) shop
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        myShop = shop;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    [self.labelSelection setText:[myShop name]];

}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = NO;
    UIBarButtonItem *refreshButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(testClick)];
    UIBarButtonItem *refreshShare = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(testClick)];
    
//    self.navigationItem.rightBarButtonItem = refreshButton;
    self.navigationItem.rightBarButtonItems =[NSArray arrayWithObjects:refreshButton,refreshShare, nil];
}
-(void) testClick
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"test" message:@"hello" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
