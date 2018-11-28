//
//  CViewController.m
//  block
//
//  Created by 创联 on 2018/11/28.
//  Copyright © 2018年 宋佳. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.identify = NSStringFromClass([self class]);
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.CBlock) {
        self.CBlock();
    }
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dealloc{
    NSLog(@"%s",__func__);
}
@end
