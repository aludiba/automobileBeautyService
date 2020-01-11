//
//  CVSBothTeamsTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CVSScorecardModel;
@class CVSScorecardViewModel;
@interface CVSBothTeamsTableViewCell : UITableViewCell
@property(nonatomic, strong)CVSScorecardModel *CVSScoreModel;//记录模型
@property(nonatomic, strong)CVSScorecardViewModel *CVSModel;
@end

NS_ASSUME_NONNULL_END
