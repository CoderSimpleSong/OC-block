//
//  AViewController.m
//  block
//
//  Created by 创联 on 2018/11/28.
//  Copyright © 2018年 宋佳. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    [but setTitle:@"跳转到b" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(goBvc:) forControlEvents:UIControlEventTouchUpInside];
    [but sizeToFit];
    but.center = self.view.center;
    
    [self.view addSubview:but];
    
}
-(void)goBvc:(UIButton *)but{
    BViewController *bvc = [[BViewController alloc]init];
    [self.navigationController pushViewController:bvc animated:YES];
}
@end
