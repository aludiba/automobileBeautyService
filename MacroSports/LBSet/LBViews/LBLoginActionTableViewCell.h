//
//  LBLoginActionTableViewCell.h
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LBLoginActionTableViewCell;
typedef void(^LBLoginActionBlock)(LBLoginActionTableViewCell *LBcell);
@interface LBLoginActionTableViewCell : UITableViewCell
@property(nonatomic, copy)LBLoginActionBlock LBLoginActionB;
@property(nonatomic, assign)NSInteger LBIndex;
@end

NS_ASSUME_NONNULL_END
