#import "BMGPUImageOpacityFilterC.h"
@implementation BMGPUImageOpacityFilterC
+ (BOOL)ninit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)TSetopacity:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
