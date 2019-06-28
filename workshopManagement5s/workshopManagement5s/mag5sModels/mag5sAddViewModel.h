//
//  mag5sAddViewModel.h
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, mag5sAddCellType) {
    mag5sAddCellDefault,
    mag5sAddCellSingle,
    mag5sAddCellLine
};
@interface mag5sAddViewModel : NSObject
@property(nonatomic, assign)Boolean isSelect;//是否选择
@property(nonatomic, copy)NSString *title;//标题
@property(nonatomic, copy)NSString *content;//内容
@property(nonatomic, assign)Boolean isHaveContent;//是否有内容
@property(nonatomic, copy)NSString *placeholder;//默认内容
@property(nonatomic, assign)Boolean isDetail;//是否详情
@property(nonatomic, assign)CGFloat editorContentHeight;//可编辑时行高
@property(nonatomic, assign)mag5sAddCellType currentType;//该行数据类型
@end

NS_ASSUME_NONNULL_END
