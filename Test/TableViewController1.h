//
//  TableViewController1.h
//  Test
//
//  Created by Dam Van Thien on 6/5/14.
//  Copyright (c) 2014 Dam Van Thien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyView.h"

@interface TableViewController1:NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,retain) id delegate;
@end
