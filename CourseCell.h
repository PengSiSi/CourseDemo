//
//  CourseCell.h
//  CourseDemo
//
//  Created by 思 彭 on 16/11/14.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseCell : UICollectionViewCell<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *innerCollectionView;

@end
