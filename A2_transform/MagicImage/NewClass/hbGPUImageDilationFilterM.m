#import "hbGPUImageDilationFilterM.h"
@implementation hbGPUImageDilationFilterM
+ (BOOL)lInitwithradiushb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)iInithb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
