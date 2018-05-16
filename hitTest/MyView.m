//
//  MyView.m
//  hitTest
//
//  Created by tanjianzhong on 2018/5/16.
//  Copyright © 2018年 tanjianzhong. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",self);
    [super touchesBegan:touches withEvent:event];
    [[self nextResponder] touchesBegan:touches withEvent:event];
}

//在这里进行判断是否是自己或者子视图的点击事件
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    //alpha 0.1 或者隐藏/ clipsToBounds  的情况下都是返回nil
    if (self.alpha == 0.1 || self.hidden == YES || self.clipsToBounds == YES) {
        return nil;
    }
    UIView *result = [super hitTest:point withEvent:event];
    //假如发生在当前的View里面
    if (result) {
        return result;
    }
    for (UIView *subView in self.subviews) {
        CGPoint  subPoint = [subView convertPoint:point fromView:self];
        UIView *result = [subView hitTest:subPoint withEvent:event];
        //发生在self的子View上面
        if (result) {
            return result;
        }
    }
    //都没有匹配到，那么就是不属于自己的View和subView的视图，返回nil
    return  nil;
}

@end
