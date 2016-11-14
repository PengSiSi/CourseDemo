//
//  UIView+customView.h
//  doubleTableView
//
//  Created by tarena13 on 15/10/13.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MAIN_COLOR ([UIColor colorWithHex:@"#5aadf7"])

@interface UIView (customView)

+ (UIView *)viewWithLabelNumber:(NSInteger)num withHeight:(NSInteger)height;

@end
