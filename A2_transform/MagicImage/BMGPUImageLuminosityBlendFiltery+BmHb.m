#import "BMGPUImageLuminosityBlendFiltery+BmHb.h"
@implementation BMGPUImageLuminosityBlendFiltery (BmHb)
+ (BOOL)QInitbmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
