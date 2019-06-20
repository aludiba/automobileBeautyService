//
//  autoBeuAddViewModel.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, autoBeuAddCellType) {
    autoBeuAddCellDefault,
    autoBeuAddCellSingle,
    autoBeuAddCellMore,
    autoBeuAddCellLine
};
@interface autoBeuAddViewModel : NSObject
@property(nonatomic, assign)Boolean isSelect;//是否选择
@property(nonatomic, copy)NSString *title;//标题
@property(nonatomic, copy)NSString *content;//内容
@property(nonatomic, assign)Boolean isHaveContent;//是否有内容
@property(nonatomic, copy)NSString *placeholder;//默认内容
@property(nonatomic, assign)Boolean isDetail;//是否详情
@property(nonatomic, assign)CGFloat editorContentHeight;//可编辑时行高
@property(nonatomic, assign)autoBeuAddCellType currentType;//该行数据类型
@property(nonatomic, strong)NSMutableArray *switchTitlesArray;//多选项栏目
@property(nonatomic, strong)NSArray *switchsArray;//存储参数数据
@end

NS_ASSUME_NONNULL_END
