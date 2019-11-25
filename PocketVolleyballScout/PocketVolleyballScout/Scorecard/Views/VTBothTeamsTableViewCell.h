//
//  VTBothTeamsTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class VTScorecardModel;
@class VTScorecardViewModel;
@interface VTBothTeamsTableViewCell : UITableViewCell
@property(nonatomic, strong)VTScorecardModel *VTScoreModel;//记录模型
@property(nonatomic, strong)VTScorecardViewModel *VTModel;
@end

NS_ASSUME_NONNULL_END
