#import "UIImage+RoundedCornerBm.h"
@implementation UIImage (RoundedCornerBm)
+ (BOOL)roundedCornerImageBordersizeBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)addRoundedRectToPathContextOvalwidthOvalheightBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
