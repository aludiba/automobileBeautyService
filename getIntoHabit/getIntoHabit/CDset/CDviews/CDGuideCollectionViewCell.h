//
//  CDGuideCollectionViewCell.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CDGuideModel;
@interface CDGuideCollectionViewCell : UICollectionViewCell
@property(nonatomic, strong)CDGuideModel *model;
@end

NS_ASSUME_NONNULL_END
