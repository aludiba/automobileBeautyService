//
//  PKCategoryManagementModel.h
//  PocketBooks
//
//  Created by bykj on 2019/9/2.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PKCategoryManagementModel : NSObject
@property(nonatomic, assign)NSInteger code;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, assign)Boolean isSelect;
@end

NS_ASSUME_NONNULL_END
