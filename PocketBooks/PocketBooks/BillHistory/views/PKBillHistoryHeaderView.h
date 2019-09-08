//
//  PKBillHistoryHeaderView.h
//  PocketBooks
//
//  Created by bykj on 2019/9/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^tapBlock)(Boolean fold);
@interface PKBillHistoryHeaderView : UITableViewHeaderFooterView
@property(nonatomic, assign)NSInteger section;
@property(nonatomic, assign)Boolean fold;
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, copy)tapBlock tapB;
@end

NS_ASSUME_NONNULL_END
