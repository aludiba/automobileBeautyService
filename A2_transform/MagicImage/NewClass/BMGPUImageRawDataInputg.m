#import "BMGPUImageRawDataInputg.h"
@implementation BMGPUImageRawDataInputg
+ (BOOL)DInitwithbytessizebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)QInitwithbytessizepixelformatbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pInitwithbytessizepixelformattypebm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)oDeallocbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)EUploadbytesbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)bUpdatedatafrombytessizebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)OProcessdatabm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)BProcessdatafortimestampbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)HOutputimagesizebm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
