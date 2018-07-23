//
//  ViewController.m
//  Example
//
//  Created by aDu on 2018/7/23.
//  Copyright © 2018年 aDu. All rights reserved.
//

#import "ViewController.h"
#import <UIView+KSBorderRadius.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *aView = [[UIView alloc] init];
    aView.frame = CGRectMake(50, 100, self.view.frame.size.width - 100, self.view.frame.size.width - 100);
    [aView setBorderWithColor:[UIColor redColor] borderWidth:2 cornerRadius:10];
    aView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:aView];
}

@end
