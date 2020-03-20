//
//  GAVolleyballScoringSaveTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAVolleyballScorecardViewModel;
@class GAVolleyballScoringSaveTableViewCell;
typedef void(^GAScorecardSaveBlock)(GAVolleyballScoringSaveTableViewCell *cell);
@interface GAVolleyballScoringSaveTableViewCell : UITableViewCell
@property(nonatomic, strong)GAVolleyballScorecardViewModel *GAModel;
@property(nonatomic, strong)GAScorecardSaveBlock GAScorecardSaveB;//保存动作回调
@end

NS_ASSUME_NONNULL_END
