//
//  XHMJ_FootMarkCommentDrawView.m
//  chinapainting
//
//  Created by RexMa on 15/8/24.
//  Copyright (c) 2015年 XinHuaTV. All rights reserved.
//

#import "XHMJ_FootMarkCommentDrawView.h"

@implementation XHMJ_FootMarkCommentDrawView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor *lightGrayColor = [UIColor colorWithRed:237.0/255.0 green:238.0/255.0 blue:238.0/255.0 alpha:1.0f];
    CGContextSetRGBStrokeColor(context, 237.0/255.0, 238.0/255.0, 238.0/255.0, 1.0f);
    CGContextSetFillColorWithColor(context, lightGrayColor.CGColor);
    
    CGPoint point[8];
    point[0] = CGPointMake(0, 10);
    point[1] = CGPointMake(50, 10);
    point[2] = CGPointMake(60, 2);
    point[3] = CGPointMake(70, 10);
    point[4] = CGPointMake(rect.size.width, 10);
    point[5] = CGPointMake(rect.size.width, rect.size.height);
    point[6] = CGPointMake(0, rect.size.height);
    point[7] = CGPointMake(0, 10);
    
    CGContextAddLines(context, point, 8);
    CGContextDrawPath(context, kCGPathFillStroke);
}


@end
