//
//  KAproblemFeedbackTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class KAproblemFeedbackTableViewCell;
@class KACargoAddViewModel;
typedef void(^contentEditBlock)(KAproblemFeedbackTableViewCell *cell);
@interface KAproblemFeedbackTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock KAeditBlock;
@property(nonatomic, assign)CGFloat KAcontentHeight;
@property(nonatomic, strong)KACargoAddViewModel *KAViewModel;
@end

NS_ASSUME_NONNULL_END
