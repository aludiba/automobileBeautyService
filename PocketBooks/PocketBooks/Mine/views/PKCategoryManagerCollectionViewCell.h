//
//  PKCategoryManagerCollectionViewCell.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PKCategoryManagerCollectionViewCell;
typedef void(^operationBlock)(PKCategoryManagerCollectionViewCell *cell);
@interface PKCategoryManagerCollectionViewCell : UICollectionViewCell
@property (nonatomic, copy)operationBlock operationB;
@end

NS_ASSUME_NONNULL_END
