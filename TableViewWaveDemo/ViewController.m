//
//  ViewController.m
//  TableViewWaveDemo
//
//  Created by jason on 4/22/14.
//  Copyright (c) 2014 taobao. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+Wave.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"Row:                                     %d", indexPath.row];
    return cell;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    return [NSString stringWithFormat:@"Section: %d", section];
//}



- (IBAction)scrollToTopAnimated:(id)sender {
    
    [self.tableView reloadDataAnimateWithWave:RightToLeftWaveAnimation];
}


@end
