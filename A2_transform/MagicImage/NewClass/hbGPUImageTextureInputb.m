#import "hbGPUImageTextureInputb.h"
@implementation hbGPUImageTextureInputb
+ (BOOL)QInitwithtextureySize:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)mProcesstexturewithframetime:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
