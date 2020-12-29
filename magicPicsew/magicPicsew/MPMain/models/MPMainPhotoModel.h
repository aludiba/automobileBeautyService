//
//  MPMainPhotoModel.h
//  magicPicsew
//
//  Created by 123 on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface MPMainPhotoModel : NSObject

@property (nonatomic, assign) NSInteger index;//被选中的第几张图片

@property (nonatomic, assign) Boolean isSelect;//是否选中

@property (nonatomic, strong) PHAsset *asset;//照片信息

@end

NS_ASSUME_NONNULL_END
