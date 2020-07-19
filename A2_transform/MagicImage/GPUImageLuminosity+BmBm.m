#import "GPUImageLuminosity+BmBm.h"
@implementation GPUImageLuminosity (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)initializeSecondaryAttributesBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)extractLuminosityAtFrameTimeBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
