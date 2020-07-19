#import "BMGPUImageRawDataInputg+Bm.h"
@implementation BMGPUImageRawDataInputg (Bm)
+ (BOOL)DInitwithbytessizebmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)QInitwithbytessizepixelformatbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)pInitwithbytessizepixelformattypebmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)oDeallocbmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)EUploadbytesbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)bUpdatedatafrombytessizebmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)OProcessdatabmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)BProcessdatafortimestampbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)HOutputimagesizebmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
