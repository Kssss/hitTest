//
//  My2View.m
//  hitTest
//
//  Created by tanjianzhong on 2018/5/16.
//  Copyright © 2018年 tanjianzhong. All rights reserved.
//

#import "My2View.h"

@implementation My2View

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",self);
    //调用父类实现
    [super touchesBegan:touches withEvent:event];
    //将touch事件发送给下一个响应者 
    [[self nextResponder] touchesBegan:touches withEvent:event];

}
@end
