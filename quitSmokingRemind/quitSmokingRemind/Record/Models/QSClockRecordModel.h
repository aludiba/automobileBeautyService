//
//  QSClockRecordModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QSClockRecordModel : NSObject
@property(nonatomic, strong)NSString *QStitle;//标题
@property(nonatomic, strong)NSString *QScontent;//内容
@property(nonatomic, assign)CGFloat QScontentHeight;//内容高度

@end

NS_ASSUME_NONNULL_END
