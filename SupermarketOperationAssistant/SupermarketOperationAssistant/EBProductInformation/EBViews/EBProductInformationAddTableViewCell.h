//
//  EBProductInformationAddTableViewCell.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EBProductInformationAddTableViewCell;
@class EBProductInformationAddModel;
typedef void(^EBcontentEditBlock)(EBProductInformationAddTableViewCell *cell);
@interface EBProductInformationAddTableViewCell : UITableViewCell
@property(nonatomic, copy)EBcontentEditBlock EBeditBlock;
@property(nonatomic, assign)CGFloat EBcontentHeight;
@property(nonatomic, strong)EBProductInformationAddModel *EBViewModel;
@end

NS_ASSUME_NONNULL_END
