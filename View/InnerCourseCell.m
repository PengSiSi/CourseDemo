//
//  InnerCourseCell.m
//  CourseDemo
//
//  Created by 思 彭 on 16/11/14.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "InnerCourseCell.h"
#import "UIViewExt.h"

@implementation InnerCourseCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setSubViews];
    }
    return self;
}

- (void)setSubViews {
   
    self.courseLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.contentView.bounds.size.width - 1, self.contentView.bounds.size.height - 1)];
    self.courseLabel.font = [UIFont systemFontOfSize:13];
    self.courseLabel.text = @"语文";
    self.courseLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.courseLabel];
    
    self.lineView = [[UIView alloc]initWithFrame:CGRectMake(self.courseLabel.right , 0, 1, self.courseLabel.height)];
    self.lineView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.lineView];
    self.bottomLineView = [[UIView alloc]initWithFrame:CGRectMake(0 , self.courseLabel.bottom, self.courseLabel.width, 1)];
    self.bottomLineView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.bottomLineView];
}

@end
