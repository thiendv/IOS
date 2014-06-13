//
//  TableViewController1.m
//  Test
//
//  Created by Dam Van Thien on 6/5/14.
//  Copyright (c) 2014 Dam Van Thien. All rights reserved.
//

#import "TableViewController1.h"

@implementation TableViewController1{
    NSArray *tableViewData2;
}

-(id)init {
    tableViewData2 = [NSArray arrayWithObjects:@"hello",@"moto", nil];
    return self;
}

-(void) viewDidLoad
{
    //[super viewDidLoad];
    tableViewData2 = [NSArray arrayWithObjects:@"hello",@"moto", nil];
}

//-(void) didReceiveMemoryWarning
//{
//    //[super didReceiveMemoryWarning];
//}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableViewData2 count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSString *row = [[NSString alloc] initWithFormat:@"select: %li",indexPath.row];
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"test" message:row delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
//    [alert show];
    

    [self.delegate performSelector:@selector(gotoNext) withObject:indexPath];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpelTableIdentifier = @"index";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpelTableIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpelTableIdentifier];
    }
    cell.textLabel.text = [tableViewData2 objectAtIndex:indexPath.row];
    return cell;
}

@end
