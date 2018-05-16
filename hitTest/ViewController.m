//
//  ViewController.m
//  hitTest
//
//  Created by tanjianzhong on 2018/5/16.
//  Copyright © 2018年 tanjianzhong. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
#import "My2View.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyView  *view = [[MyView alloc] init];
    view.backgroundColor = [UIColor redColor];
    
    
    My2View *view2 = [[My2View alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    
    view.frame = CGRectMake(50, 50, 100, 100);
    //设置View2超出View的区域
    view2.frame = CGRectMake(50, 50, 100, 100);
    [self.view addSubview:view];
    [view addSubview:view2];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",self);
    [super touchesBegan:touches withEvent:event];
    [[self nextResponder] touchesBegan:touches withEvent:event];

}
@end
