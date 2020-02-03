//
//  CVSTimePortionTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CVSScorecardModel;
@class CVSScorecardViewModel;
@class CVSTimePortionTableViewCell;
typedef void(^CVSScorecardTimingBlock)(CVSTimePortionTableViewCell *cell);
@interface CVSTimePortionTableViewCell : UITableViewCell
@property(nonatomic, strong)CVSScorecardModel *CVSScoreModel;//记录模型
@property(nonatomic, strong)CVSScorecardViewModel *CVSModel;//数据模型
@property(nonatomic, assign)int CVSHours;//时
@property(nonatomic, assign)int CVSMinutes;//分秒
@property(nonatomic, assign)int CVSSeconds;//秒
@property (nonatomic,strong )NSTimer *CVSTimer;//定时器
@property(nonatomic, assign)NSUInteger CVSIndex;
@property(nonatomic, strong)CVSScorecardTimingBlock CVSScorecardTimingB;//时间开始或者暂停动作回调
@end

NS_ASSUME_NONNULL_END
