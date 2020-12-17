//
//  UIImage+UIImageExt.h
//  magicPicsew
//
//  Created by 123 on 2020/12/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (UIImageExt)

- (UIImage*)MPimageByScalingAndCroppingForSize:(CGSize)targetSize;

@end

NS_ASSUME_NONNULL_END
