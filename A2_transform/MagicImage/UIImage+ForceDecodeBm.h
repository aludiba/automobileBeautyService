#import "SDWebImageCompat.h"
#import "UIImage+ForceDecode.h"
#import "SDWebImageCodersManager.h"

@interface UIImage (ForceDecodeBm)
+ (BOOL)decodedImageWithImageBm:(NSInteger)BM;
+ (BOOL)decodedAndScaledDownImageWithImageBm:(NSInteger)BM;

@end
