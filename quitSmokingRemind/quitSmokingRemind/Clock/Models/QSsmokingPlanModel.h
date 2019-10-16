//
//  QSsmokingPlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QSsmokingPlanModel : NSObject
@property(nonatomic, copy)NSString *QStitle;
@property(nonatomic, copy)NSString *QScontent;
@property(nonatomic, copy)NSString *QSdefaultString;
@property(nonatomic, copy)NSString *QSunit;
@property(nonatomic, assign)NSUInteger QStype;
@end

NS_ASSUME_NONNULL_END
