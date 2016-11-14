//
//  CourseCell.m
//  CourseDemo
//
//  Created by 思 彭 on 16/11/14.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CourseCell.h"
#import "InnerCourseCell.h"

#define k_screenW  [UIScreen mainScreen].bounds.size.width
#define k_screenH  [UIScreen mainScreen].bounds.size.height

@implementation CourseCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setSubViews];
    }
    return self;
}

- (void)setSubViews {
    
    [self.contentView addSubview:self.innerCollectionView];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 8;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 8;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    InnerCourseCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Innercell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    if (indexPath.item == 0) {
        cell.courseLabel.text = [NSString stringWithFormat:@"第%ld节",indexPath.section + 1];
        cell.courseLabel.backgroundColor = [UIColor whiteColor];
    }
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake(k_screenW / 8, 50);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (UICollectionView *)innerCollectionView {
    
    if (!_innerCollectionView) {
        UICollectionViewFlowLayout *layOut = [[UICollectionViewFlowLayout alloc]init];
        layOut.minimumLineSpacing = 0;
        layOut.minimumInteritemSpacing = 0;
//        layOut.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        layOut.itemSize = CGSizeMake(k_screenW / 8, 50);
        _innerCollectionView = [[UICollectionView alloc]initWithFrame:self.contentView.bounds collectionViewLayout:layOut];
        _innerCollectionView.backgroundColor = [UIColor orangeColor];
        _innerCollectionView.delegate = self;
        _innerCollectionView.dataSource = self;
        _innerCollectionView.scrollEnabled = NO;
        _innerCollectionView.showsVerticalScrollIndicator = NO;
        _innerCollectionView.showsHorizontalScrollIndicator = NO;
        
        // 注册cell
        [_innerCollectionView registerClass:[InnerCourseCell class] forCellWithReuseIdentifier:@"Innercell"];

    }
    return _innerCollectionView;
}
@end
