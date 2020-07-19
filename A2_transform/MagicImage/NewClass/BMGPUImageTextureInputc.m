#import "BMGPUImageTextureInputc.h"
@implementation BMGPUImageTextureInputc
+ (BOOL)EInitwithtextureySize:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)FProcesstexturewithframetime:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
