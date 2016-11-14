//
//  UIView+customView.m
//  doubleTableView
//
//  Created by tarena13 on 15/10/13.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "UIView+customView.h"
#define LabelWidth k_screenW / 8
#define LabelHeight 40
#import "UIViewExt.h"

#define RGBA(R/*红*/, G/*绿*/, B/*蓝*/, A/*透明*/)\
[UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]

//前锋学校 原来带图片现在改成这个背景颜色
#define QF_BG_COLOR (RGBA(242, 243, 247, 1))
#define k_screenW  [UIScreen mainScreen].bounds.size.width
#define k_screenH  [UIScreen mainScreen].bounds.size.height

@implementation UIView (customView)

+ (UIView *)viewWithLabelNumber:(NSInteger)num withHeight:(NSInteger)height{
    UIView *view = [[self alloc] initWithFrame:CGRectMake(0, 0, k_screenW, height)];
    view.backgroundColor = [UIColor lightGrayColor];
    for (int i = 0; i < num; i++) {
        UILabel *label;
        if (i == 0) {
            label = [[UILabel alloc] initWithFrame:CGRectMake(LabelWidth * i, 0, LabelWidth - 2, height)];
            label.numberOfLines = 0;
//            view.backgroundColor = [UIColor colorWithRed:100/255.0 green:149/255.0 blue:237/255.0 alpha:1];
            label.backgroundColor = [UIColor colorWithRed:100/255.0 green:149/255.0 blue:237/255.0 alpha:1];
        }
        else {
            label = [[UILabel alloc] initWithFrame:CGRectMake(LabelWidth * i, 0, LabelWidth - 2, height)];
        }
        label.tag = i;
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:11];
//        label.backgroundColor = [UIColor lightGrayColor];
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(label.right, 0, 1, height)];
        lineView.backgroundColor = [UIColor blackColor];
        [view addSubview:lineView];
        [view addSubview:label];
    }
    return view;
}


- (UIColor *)colorwithHexString:(NSString *)color
{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //r
    NSString *rString = [cString substringWithRange:range];
    
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

@end
