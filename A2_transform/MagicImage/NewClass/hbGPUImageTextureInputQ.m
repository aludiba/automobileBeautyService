#import "hbGPUImageTextureInputQ.h"
@implementation hbGPUImageTextureInputQ
+ (BOOL)MInitwithtexturesizehb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)HProcesstexturewithframetimehb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
