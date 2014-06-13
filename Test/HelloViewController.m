//
//  HelloViewController.m
//  Test
//
//  Created by Dam Van Thien on 6/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HelloViewController.h"


@interface HelloViewController ()
    
@end


@implementation HelloViewController

{
    NSArray *tableData;
}

@synthesize tableView2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableData = [NSArray arrayWithObjects:@"ga", @"con",  nil];
    
    datasource = [[TableViewController1 alloc] init];
    self.tableView2.dataSource = datasource;
    self.tableView2.delegate = datasource;
    datasource.delegate = self;
    [tableView2 reloadData];

    
}
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMessage
{
    UIAlertView *uiAlertView = [[UIAlertView alloc] initWithTitle:@"Hell" message:@"this is test" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [uiAlertView show];
}

- (void)gotoNext {
    
    Shop *item = [[Shop alloc] init];
    [item setName:@"thien dam"];
    myView = [[MyView alloc] initWithNibName:@"MyView" bundle:nil withShop:item];
    //UINavigationController *controller = [ [UINavigationController alloc] initWithRootViewController:myView];
    [self.navigationController pushViewController:myView animated:YES];
    //[self.view addSubview:controller.topViewController.view];
}

//-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [tableData count];
//}

//-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *simpleTableIndentifier = @"CustomCell";
//    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIndentifier];
////    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIndentifier];
//    if (cell == nil){
////        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIndentifier];
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
//    }
//    
//    cell.textView1.text = [tableData objectAtIndex:indexPath.row];
////    cell.uiImageView.image = [UIImage imageNamed:@"book-cover-basic-200.jpg"];
//    return cell;
//}

@end
