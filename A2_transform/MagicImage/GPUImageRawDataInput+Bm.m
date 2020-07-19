#import "GPUImageRawDataInput+Bm.h"
@implementation GPUImageRawDataInput (Bm)
+ (BOOL)initWithBytesSizeBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)initWithBytesSizePixelformatBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)initWithBytesSizePixelformatTypeBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)uploadBytesBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)updateDataFromBytesSizeBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)processDataBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)processDataForTimestampBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)outputImageSizeBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
