//
//  EBPurchaseStatusListTableViewCell.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/21.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EBPurchaseStatusModel;
@class EBPurchaseStatusListTableViewCell;
@class EBPurchaseStatusViewController;
typedef void(^EBcontentEditBlock)(EBPurchaseStatusListTableViewCell *cell);
@interface EBPurchaseStatusListTableViewCell : UITableViewCell
@property(nonatomic, strong)EBPurchaseStatusViewController *EBsuperVC;
@property(nonatomic, copy)EBcontentEditBlock EBeditBlock;
@property(nonatomic, strong)EBPurchaseStatusModel *EBPurchaseStatusmodel;
@end

NS_ASSUME_NONNULL_END
