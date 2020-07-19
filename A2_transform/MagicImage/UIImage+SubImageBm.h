#import <UIKit/UIKit.h>
#import "UIImage+SubImage.h"

@interface UIImage (SubImageBm)
+ (BOOL)subImageWithRectBm:(NSInteger)BM;
+ (BOOL)rescaleImageToSizeBm:(NSInteger)BM;
+ (BOOL)rescaleImageToPXBm:(NSInteger)BM;
+ (BOOL)getTiledImageWithSizeBm:(NSInteger)BM;
+ (BOOL)imageFromViewBm:(NSInteger)BM;
+ (BOOL)mergeImageWithimageBm:(NSInteger)BM;

@end
