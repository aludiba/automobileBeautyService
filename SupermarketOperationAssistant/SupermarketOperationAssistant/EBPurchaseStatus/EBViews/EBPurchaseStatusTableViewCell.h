//
//  EBPurchaseStatusTableViewCell.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/21.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EBPurchaseStatusTableViewCell;
@class EBPurchaseStatusAddModel;
typedef void(^EBcontentEditBlock)(EBPurchaseStatusTableViewCell *cell);
@interface EBPurchaseStatusTableViewCell : UITableViewCell
@property(nonatomic, copy)EBcontentEditBlock EBeditBlock;
@property(nonatomic, assign)CGFloat EBcontentHeight;
@property(nonatomic, strong)EBPurchaseStatusAddModel *EBViewModel;
@end

NS_ASSUME_NONNULL_END
