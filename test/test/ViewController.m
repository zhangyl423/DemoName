//
//  ViewController.m
//  test
//
//  Created by lanou3g on 15/5/29.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "ViewController.h"
#import "NetAddress.h"
#import "ATableViewController.h"
#import "BTableViewController.h"
@interface ViewController ()
{
    UIView *_view1;
    UIView *_view2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSMutableDictionary * dictionary = [@{@"id":@"597547", @"source":@"iphone", @"format":@"json"} mutableCopy];
//    NSString * url = [NetAddress getURLWithDictionary:dictionary];
//    NSLog(@"%@", url);
    ATableViewController *AVC = [[ATableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    _view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 300)];
    _view1.backgroundColor = [UIColor redColor];
    [self addChildViewController:AVC];
    [AVC didMoveToParentViewController:self];
    [_view1 addSubview:AVC.view];
    [self.view addSubview:_view1];
    
    BTableViewController *BVC = [[BTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    _view2 = [[UIView alloc] initWithFrame:CGRectMake(160, 0, 160, 300)];
    _view2.backgroundColor = [UIColor lightGrayColor];
    [self addChildViewController:BVC];
    [BVC didMoveToParentViewController:self];
    [_view2 addSubview:BVC.view];
    [self.view addSubview:_view2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
