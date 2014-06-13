//
//  MyView.h
//  Test
//
//  Created by Dam Van Thien on 6/13/14.
//  Copyright (c) 2014 Dam Van Thien. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shop.h"
@interface MyView : UIViewController {
    Shop* myShop;
}

@property (nonatomic, retain) IBOutlet UILabel *labelSelection;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil withShop:(Shop*) shop;
-(void) testClick;
@end
