#import "BMGPUImageFramebufferCacheR+Bm.h"
@implementation BMGPUImageFramebufferCacheR (Bm)
+ (BOOL)aInitbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)lHashforsizetextureoptionsonlytexturebmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)ZFetchframebufferforsizetextureoptionsonlytexturebmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)TFetchframebufferforsizeonlytexturebmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)tReturnframebuffertocachebmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)cPurgeallunassignedframebuffersbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)xAddframebuffertoactiveimagecapturelistbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)WRemoveframebufferfromactiveimagecapturelistbmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
