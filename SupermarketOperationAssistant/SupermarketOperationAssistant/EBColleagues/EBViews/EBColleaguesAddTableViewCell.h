//
//  EBColleaguesAddTableViewCell.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@class EBColleaguesAddTableViewCell;
@class EBColleaguesAddModel;
typedef void(^EBcontentEditBlock)(EBColleaguesAddTableViewCell *cell);
@interface EBColleaguesAddTableViewCell : UITableViewCell
@property(nonatomic, copy)EBcontentEditBlock EBeditBlock;
@property(nonatomic, assign)CGFloat EBcontentHeight;
@property(nonatomic, strong)EBColleaguesAddModel *EBViewmodel;
@end

NS_ASSUME_NONNULL_END
