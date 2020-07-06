//
//  LBTeamAddTitleTableViewCell.h
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LBTeamAddTitleTableViewCell;
typedef void(^LBTeamAddTitleBlock)(LBTeamAddTitleTableViewCell *cell);
@interface LBTeamAddTitleTableViewCell : UITableViewCell
@property(nonatomic, copy)LBTeamAddTitleBlock LBTeamAddTitleB;
@end

NS_ASSUME_NONNULL_END
