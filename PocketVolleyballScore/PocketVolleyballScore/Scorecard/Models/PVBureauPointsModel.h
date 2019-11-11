//
//  PVBureauPointsModel.h
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PVBureauPointsModel : NSObject
@property(nonatomic, assign)NSUInteger PVIndex;//局次
@property(nonatomic, copy)NSString *PVtBureauScoreString;//局分
@property(nonatomic, assign)scorecardWhichWinType whichWinType;//主客胜负关系
@end

NS_ASSUME_NONNULL_END
