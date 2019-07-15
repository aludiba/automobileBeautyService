//
//  stbaAddActivitiesViewModel.h
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/11.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, stbaAddActivitiesCellType) {
    stbaAddActivitiesCellDefault,
    stbaAddActivitiesCellLine,
    stbaAddActivitiesCellDate,
    stbaAddActivitiesCellChoose,
};
@interface stbaAddActivitiesViewModel : NSObject
@property(nonatomic, copy)NSString *title;//标题
@property(nonatomic, copy)NSString *content;//内容
@property(nonatomic, copy)NSString *placeholder;//默认内容
@property(nonatomic, assign)Boolean isDetail;//是否详情
@property(nonatomic, assign)CGFloat editorContentHeight;//可编辑时行高
@property(nonatomic, assign)stbaAddActivitiesCellType currentType;//该行数据类型
@property(nonatomic, strong)NSMutableArray *participantsArray;//联系人数组
@end

NS_ASSUME_NONNULL_END
