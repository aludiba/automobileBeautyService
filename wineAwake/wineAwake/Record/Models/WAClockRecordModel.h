//
//  WAClockRecordModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WAClockRecordModel : NSObject
@property(nonatomic, strong)NSString *title;//标题
@property(nonatomic, strong)NSString *content;//内容
@property(nonatomic, assign)CGFloat contentHeight;//内容高度

@end

NS_ASSUME_NONNULL_END
