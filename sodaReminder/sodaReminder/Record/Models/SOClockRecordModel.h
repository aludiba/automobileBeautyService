//
//  SOClockRecordModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOClockRecordModel : NSObject
@property(nonatomic, strong)NSString *SOtitle;//标题
@property(nonatomic, strong)NSString *SOcontent;//内容
@property(nonatomic, assign)CGFloat SOcontentHeight;//内容高度

@end

NS_ASSUME_NONNULL_END
