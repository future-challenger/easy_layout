//
//  UIView+EasyLayout.h
//  EasyLayout
//
//  Created by Bruce Lee on 7/6/15.
//  Copyright (c) 2015 Bruce Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(EasyLayout)

+ (CGFloat) ViewWidth;
+ (CGFloat) ViewHeight;

- (CGFloat) viewWidth;
- (CGFloat) viewHeight;
- (CGFloat) originX;
- (CGFloat) originY;
- (CGFloat) maxX;
- (CGFloat) maxY;

- (void) alignParent:(UIView *)parentView RightWithSize:(CGSize)size WithMargin:(CGFloat)margin;
- (void) alignParent:(UIView *)parentView rightTo:(UIView *)subView withSize:(CGSize)size withMargin:(CGFloat)margin;
- (void) alignParent:(UIView *)parentView underTo:(UIView *)subView withSize:(CGSize)size withMargin:(CGFloat)margin;

@end
