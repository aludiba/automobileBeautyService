#import "GPUImageLuminosity+Hb.h"
@implementation GPUImageLuminosity (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)initializeSecondaryAttributesHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)extractLuminosityAtFrameTimeHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
