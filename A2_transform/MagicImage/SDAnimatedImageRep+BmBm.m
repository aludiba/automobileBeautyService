#import "SDAnimatedImageRep+BmBm.h"
@implementation SDAnimatedImageRep (BmBm)
+ (BOOL)setPropertyWithvalueBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)imageSourceBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
