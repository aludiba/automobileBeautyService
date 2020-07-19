#import "hbGPUImageHalftoneFilterL.h"
@implementation hbGPUImageHalftoneFilterL
+ (BOOL)Ginit:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
