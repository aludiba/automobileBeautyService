//
//  BCDailyAddVTableViewCell.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BCDailyAddVTableViewCell;
@class BCDailyAddModel;
typedef void(^BCcontentEditBlock)(BCDailyAddVTableViewCell *cell);
@interface BCDailyAddVTableViewCell : UITableViewCell
@property(nonatomic, copy)BCcontentEditBlock BCeditBlock;
@property(nonatomic, assign)CGFloat BCcontentHeight;
@property(nonatomic, strong)BCDailyAddModel *BCViewModel;
@end

NS_ASSUME_NONNULL_END
