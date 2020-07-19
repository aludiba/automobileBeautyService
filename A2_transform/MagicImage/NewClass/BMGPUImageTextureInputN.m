#import "BMGPUImageTextureInputN.h"
@implementation BMGPUImageTextureInputN
+ (BOOL)WInitwithtextureCSize:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mProcesstexturewithframetime:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
