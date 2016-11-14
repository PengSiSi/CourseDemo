//
//  CollectionHeaderReusableView.m
//  CourseDemo
//
//  Created by 思 彭 on 16/11/14.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CollectionHeaderReusableView.h"
#import "UIView+customView.h"

#define MAIN_COLOR ([UIColor colorWithHex:@"#5aadf7"])

@implementation CollectionHeaderReusableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubViews];
    }
    return self;
}

- (void)createSubViews {
   
    self.labelView = [UIView viewWithLabelNumber:8 withHeight:44];
    [self addSubview:self.labelView];
}

- (void)setWeekArray:(NSArray *)weekArray {
    
    _weekArray = weekArray;
    NSArray *labesArray = self.labelView.subviews;
    NSMutableArray *weekLabelArray = [NSMutableArray array];
    for (NSInteger i = 0; i < labesArray.count; i++) {
        if ([labesArray[i] isKindOfClass:[UILabel class]]) {
            [weekLabelArray addObject:labesArray[i]];
        }
    }
    for (NSInteger i = 0; i < weekLabelArray.count; i++) {
        UILabel *label = weekLabelArray[i];
        label.text = self.weekArray[i];
    }
}

@end
