//
//  MPRecentProjectsModel.h
//  magicPicsew
//
//  Created by 123 on 2020/12/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MPRecentProjectsModel : NSObject

@property (nonatomic, copy) NSString *MPtitle;//标题

@property (nonatomic, copy) NSString *MPheadImgName;//头部图像

@property (nonatomic, copy) NSString *MPphotoNumber;//图片数量

@property (nonatomic, assign) Boolean MPisSelected;//是否选中
@end

NS_ASSUME_NONNULL_END
