//
//  AHClockRecordModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AHClockRecordModel : NSObject
@property(nonatomic, strong)NSString *AHtitle;//标题
@property(nonatomic, strong)NSString *AHcontent;//内容
@property(nonatomic, assign)CGFloat AHcontentHeight;//内容高度

@end

NS_ASSUME_NONNULL_END
