#import "GPUImageLuminosity+Bm.h"
@implementation GPUImageLuminosity (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initializeSecondaryAttributesBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)extractLuminosityAtFrameTimeBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
