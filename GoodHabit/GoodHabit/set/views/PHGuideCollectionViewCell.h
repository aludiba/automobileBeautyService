//
//  PHGuideCollectionViewCell.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHGuideModel;
@interface PHGuideCollectionViewCell : UICollectionViewCell
@property(nonatomic, strong)PHGuideModel *model;
@end

NS_ASSUME_NONNULL_END
