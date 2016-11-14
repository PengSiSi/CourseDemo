//
//  InnerCourseCell.h
//  CourseDemo
//
//  Created by 思 彭 on 16/11/14.
//  Copyright © 2016年 思 彭. All rights reserved.
// 课表内层Cell

#import <UIKit/UIKit.h>

@interface InnerCourseCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *courseLabel;
@property (nonatomic, strong) UIView *lineView;
@property (nonatomic, strong) UIView *bottomLineView;

@end
