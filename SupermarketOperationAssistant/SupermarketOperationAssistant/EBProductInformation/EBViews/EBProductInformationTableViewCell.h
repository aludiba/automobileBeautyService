//
//  EBProductInformationTableViewCell.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EBProductInformationModel;
@class EBProductInformationTableViewCell;
@class EBProductInformationViewController;
typedef void(^EBcontentEditBlock)(EBProductInformationTableViewCell *cell);
@interface EBProductInformationTableViewCell : UITableViewCell
@property(nonatomic, strong)EBProductInformationViewController *EBsuperVC;
@property(nonatomic, copy)EBcontentEditBlock EBeditBlock;
@property(nonatomic, strong)EBProductInformationModel *EBProductInformationmodel;
@end

NS_ASSUME_NONNULL_END
