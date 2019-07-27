//
//  SDTextPictureView.h
//  Simple Diary
//
//  Created by bykj on 2019/7/26.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@class SDWriteDiaryViewController;
@class SDTextPictureView;
typedef void(^pictureComplete)(SDTextPictureView *pictureView);
@interface SDTextPictureView : UIView
@property(nonatomic, copy)pictureComplete pictureBlock;
@property(nonatomic, strong)SDWriteDiaryViewController *superVC;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *imageDataSource;
@property (nonatomic, strong) NSMutableArray *selectArray;
@property (nonatomic, strong) UIView *collectionSuperView;
@property (nonatomic, assign) NSInteger maxCount;
- (void)initCollectionView;
@end

NS_ASSUME_NONNULL_END
