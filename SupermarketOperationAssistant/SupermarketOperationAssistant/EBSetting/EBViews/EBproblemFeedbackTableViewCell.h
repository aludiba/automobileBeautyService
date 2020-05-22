//
//  EBproblemFeedbackTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. EBl rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EBproblemFeedbackTableViewCell;
@class EBPurchaseStatusAddModel;
typedef void(^contentEditBlock)(EBproblemFeedbackTableViewCell *cell);
@interface EBproblemFeedbackTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock EBeditBlock;
@property(nonatomic, assign)CGFloat EBcontentHeight;
@property(nonatomic, strong)EBPurchaseStatusAddModel *EBViewModel;
@end

NS_ASSUME_NONNULL_END
