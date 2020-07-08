//
//  LBGameTableViewCell.h
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LBGameModel;
@interface LBGameTableViewCell : UITableViewCell
@property(nonatomic, strong)LBGameModel *LBgamemodel;
@end

NS_ASSUME_NONNULL_END
