//
//  FBDailyAddVTableViewCell.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class FBDailyAddVTableViewCell;
@class FBDailyAddModel;
typedef void(^FBcontentEditBlock)(FBDailyAddVTableViewCell *cell);
@interface FBDailyAddVTableViewCell : UITableViewCell
@property(nonatomic, copy)FBcontentEditBlock FBeditBlock;
@property(nonatomic, assign)CGFloat FBcontentHeight;
@property(nonatomic, strong)FBDailyAddModel *FBViewModel;
@end

NS_ASSUME_NONNULL_END
