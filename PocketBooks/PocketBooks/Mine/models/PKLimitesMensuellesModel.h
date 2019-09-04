//
//  PKLimitesMensuellesModel.h
//  PocketBooks
//
//  Created by bykj on 2019/9/3.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PKLimitesMensuellesModel : NSObject
@property(nonatomic, assign)NSInteger code;
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, copy)NSString *unit;
@property(nonatomic, assign)Boolean isEdit;
@property(nonatomic, assign)Boolean isSelect;
@end

NS_ASSUME_NONNULL_END
