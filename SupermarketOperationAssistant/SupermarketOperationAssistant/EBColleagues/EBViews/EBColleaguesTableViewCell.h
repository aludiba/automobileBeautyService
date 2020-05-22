//
//  EBColleaguesTableViewCell.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EBColleaguesViewController;
@class EBColleaguesModel;
@class EBColleaguesTableViewCell;
typedef void(^EBcontentEditBlock)(EBColleaguesTableViewCell *cell);
@interface EBColleaguesTableViewCell : UITableViewCell
@property(nonatomic, strong)EBColleaguesViewController *EBsuperVC;
@property(nonatomic, strong)EBColleaguesModel *EBColleaguesmodel;
@property(nonatomic, copy)EBcontentEditBlock EBeditBlock;
@end

NS_ASSUME_NONNULL_END
