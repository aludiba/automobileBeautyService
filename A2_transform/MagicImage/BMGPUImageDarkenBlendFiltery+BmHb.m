#import "BMGPUImageDarkenBlendFiltery+BmHb.h"
@implementation BMGPUImageDarkenBlendFiltery (BmHb)
+ (BOOL)PinitBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
