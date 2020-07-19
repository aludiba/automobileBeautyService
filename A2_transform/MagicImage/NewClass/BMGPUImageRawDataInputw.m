#import "BMGPUImageRawDataInputw.h"
@implementation BMGPUImageRawDataInputw
+ (BOOL)qInitwithbytessizebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)UInitwithbytessizepixelformatbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)LInitwithbytessizepixelformattypebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)tDeallocbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)aUploadbytesbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)cUpdatedatafrombytessizebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)yProcessdatabm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)WProcessdatafortimestampbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)kOutputimagesizebm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
