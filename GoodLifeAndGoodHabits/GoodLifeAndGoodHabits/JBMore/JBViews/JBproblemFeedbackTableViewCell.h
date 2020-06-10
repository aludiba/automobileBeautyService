//
//  JBproblemFeedbackTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JBproblemFeedbackTableViewCell;
@class JBCargoAddViewModel;
typedef void(^contentEditBlock)(JBproblemFeedbackTableViewCell *cell);
@interface JBproblemFeedbackTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock JBeditBlock;
@property(nonatomic, assign)CGFloat JBcontentHeight;
@property(nonatomic, strong)JBCargoAddViewModel *JBViewModel;
@end

NS_ASSUME_NONNULL_END
