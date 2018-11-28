//
//  BViewController.m
//  block
//
//  Created by 创联 on 2018/11/28.
//  Copyright © 2018年 宋佳. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()
@property(strong,nonatomic)CViewController *cVc;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    self.identify = NSStringFromClass([self class]);
    
    self.cVc = [[CViewController alloc]init];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    [but setTitle:@"跳转到c" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(goCvc:) forControlEvents:UIControlEventTouchUpInside];
    [but sizeToFit];
    but.center = self.view.center;
    
    [self.view addSubview:but];
}




-(void)goCvc:(UIButton *)but{
    
    /*
    //第一类循环引用:持用block的cvc,也被block持有了.
    CViewController *cvc = [[CViewController alloc]init];
    //解决方式
//    __weak typeof(cvc) weakSelf = cvc;
    cvc.CBlock = ^{
        NSLog(@"%@",cvc.identify);
    };
    [self.navigationController pushViewController:cvc animated:YES];
    */
    
    //第二类循环引用:self->CViewController->CBlock->self
    //解决方式
    //__weak typeof(self) copy_self= self;
    self.cVc.CBlock = ^{
        NSLog(@"%@----",self.identify);
    };
    [self.navigationController pushViewController:self.cVc animated:YES];
    
}
-(void)dealloc{
    NSLog(@"%s",__func__);
}

@end
