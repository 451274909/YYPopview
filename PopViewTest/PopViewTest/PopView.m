//
//  PopView.m
//  PopViewTest
//
//  Created by jota on 16/6/15.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "PopView.h"

@implementation PopView

- (void)showInView:(UIView *)theView {
    
    [theView addSubview:self];
    [self setNeedsDisplay];
}

- (void)dismiss {
    [self removeFromSuperview];
}

- (BOOL)isShow {
    return self.superview != nil;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismiss];
}

@end
