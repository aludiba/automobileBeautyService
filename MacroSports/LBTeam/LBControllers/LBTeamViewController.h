//
//  LBTeamViewController.h
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class LBTeamModel;
@class LBTeamViewController;
typedef void(^LBteamSelectBlock)(LBTeamViewController *cell);
@interface LBTeamViewController : LBBaseViewController
@property(nonatomic, copy)LBteamSelectBlock LBteamSelectB;
@property(nonatomic, strong)LBTeamModel *LBSelectteammodel;
@property(nonatomic, assign)Boolean LBisSelect;
@property(nonatomic, strong)UITableView *LBmainTable;
@end

NS_ASSUME_NONNULL_END
