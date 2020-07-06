//
//  LBTeamAddTableViewCell.h
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LBTeamAddTableViewCell;
@class LBTeamAddViewModel;
typedef void(^LBTeamAddTableEditBlock)(LBTeamAddTableViewCell *cell);
@interface LBTeamAddTableViewCell : UITableViewCell
@property(nonatomic, copy)LBTeamAddTableEditBlock LBTeamAddTableEditB;
@property(nonatomic, assign)CGFloat LBcontentHeight;
@property(nonatomic, strong)LBTeamAddViewModel *LBViewModel;
@end

NS_ASSUME_NONNULL_END
