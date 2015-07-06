//
//  UIView+EasyLayout.m
//  EasyLayout
//
//  Created by Bruce Lee on 7/6/15.
//  Copyright (c) 2015 Bruce Lee. All rights reserved.
//

#import "UIView+EasyLayout.h"

@implementation UIView(EasyLayout)

#pragma mark - UIScreen Width & Height

+ (CGFloat) ViewWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat) ViewHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

#pragma mark - Current View Width & Height

- (CGFloat) viewWidth {
    return CGRectGetWidth(self.frame);
}

- (CGFloat) viewHeight {
    return CGRectGetHeight(self.frame);
}

- (CGFloat)originX {
    return self.frame.origin.x;
}

- (CGFloat)maxX {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)originY {
    return self.frame.origin.y;
}

- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}

- (void)alignParent:(UIView *)parentView RightWithSize:(CGSize)size WithMargin:(CGFloat)margin {
    NSCAssert(parentView != nil, @"Parent view should not be nil");
    
    self.frame = (CGRect){margin, margin, size.width, size.height};
    [parentView addSubview:self];
}

- (void)alignParent:(UIView *)parentView rightTo:(UIView *)subView withSize:(CGSize)size withMargin:(CGFloat)margin {
    NSCAssert(parentView != nil, @"Parent view should not be nil");
    self.frame = (CGRect){subView.maxX + margin, subView.originY, size};
    [parentView addSubview:self];
}

- (void)alignParent:(UIView *)parentView underTo:(UIView *)subView withSize:(CGSize)size withMargin:(CGFloat)margin {
    NSCAssert(parentView != nil, @"Parent view should not be nil");
    self.frame = (CGRect){subView.originX, subView.maxY + margin, size};
    [parentView addSubview:self];
}

@end
