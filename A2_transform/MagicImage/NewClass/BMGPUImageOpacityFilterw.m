#import "BMGPUImageOpacityFilterw.h"
@implementation BMGPUImageOpacityFilterw
+ (BOOL)iinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)tSetopacity:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
