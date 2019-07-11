//
//  auto4sDataModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class autoBeuPaintModel;
@class autoBeuInteriorModel;
@class autoBeuNacelleModel;
@class autoBeuGlassModel;
@class autoBeuTiresAndHubsModel;
@class autoBeuHeadlightModel;
@interface autoBeuDataModel : NSObject
@property(nonatomic, copy)NSString *name;//车主姓名
@property(nonatomic, copy)NSString *carModel;//车型
@property(nonatomic, copy)NSString *licensePlate;//车牌
@property(nonatomic, copy)NSString *phoneNumber;//手机号码
@property(nonatomic, copy)NSString *date;//日期
//昵称的pinyin 获取的时候就应该转为拼音了
@property (nonatomic, copy) NSString *namePinYin;
//昵称的拼音转小写
@property (nonatomic, copy) NSString *nameLowerCase;
@property(nonatomic, strong)autoBeuPaintModel *autoBeuPaint;//漆面
@property(nonatomic, strong)autoBeuInteriorModel *autoBeuInterior;//内饰项目
@property(nonatomic, strong)autoBeuNacelleModel *autoBeuNacelle;//发动机舱
@property(nonatomic, strong)autoBeuGlassModel *autoBeuGlass;//玻璃
@property(nonatomic, strong)autoBeuTiresAndHubsModel *autoBeuTiresAndHubs;//轮胎跟轮毂
@property(nonatomic, strong)autoBeuHeadlightModel *autoBeuHeadlight;//大灯
@end

NS_ASSUME_NONNULL_END
