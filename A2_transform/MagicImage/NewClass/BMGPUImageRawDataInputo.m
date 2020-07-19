#import "BMGPUImageRawDataInputo.h"
@implementation BMGPUImageRawDataInputo
+ (BOOL)SInitwithbytesySize:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)FInitwithbytesFSizeqPixelformat:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)PInitwithbytesgSizecPixelformatEType:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)Kdealloc:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)bUploadbytes:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)gUpdatedatafrombytescSize:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)fprocessData:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)uProcessdatafortimestamp:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)DoutputImageSize:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
