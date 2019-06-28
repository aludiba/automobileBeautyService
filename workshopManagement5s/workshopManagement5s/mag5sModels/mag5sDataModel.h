//
//  mag5sDataModel.h
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class mag5sSeirModel;
@class mag5sSeitonModel;
@class mag5sSeisoModel;
@class mag5sSeiketsuModel;
@class mag5sShitsukeModel;

@interface mag5sDataModel : NSObject
@property(nonatomic, copy)NSString *sectionName;//工段名称
@property(nonatomic, copy)NSString *responsibleForWork;//负责工作
@property(nonatomic, copy)NSString *date;//日期
@property(nonatomic, copy)NSString *score;//打分
//昵称的pinyin 获取的时候就应该转为拼音了
@property (nonatomic, copy) NSString *sectionNamePinYin;
//昵称的拼音转小写
@property (nonatomic, copy) NSString *sectionNameLowerCase;
@property (nonatomic, strong) mag5sSeirModel *mag5sSeir;//整理
@property (nonatomic, strong) mag5sSeitonModel *mag5sSeiton;//整顿
@property (nonatomic, strong) mag5sSeisoModel *mag5sSeiso;//清扫
@property (nonatomic, strong) mag5sSeiketsuModel *mag5sSeiketsu;//清洁
@property (nonatomic, strong) mag5sShitsukeModel *mag5sShitsuke;//素养
@end

NS_ASSUME_NONNULL_END
