//
//  PopView.h
//  PopViewTest
//
//  Created by jota on 16/6/15.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopView : UIView

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

- (void)showInView:(UIView *)theView;
- (void)dismiss;
- (BOOL)isShow;

@end
