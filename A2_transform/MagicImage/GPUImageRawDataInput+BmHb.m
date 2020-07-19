#import "GPUImageRawDataInput+BmHb.h"
@implementation GPUImageRawDataInput (BmHb)
+ (BOOL)initWithBytesSizeBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)initWithBytesSizePixelformatBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)initWithBytesSizePixelformatTypeBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)deallocBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)uploadBytesBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)updateDataFromBytesSizeBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)processDataBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)processDataForTimestampBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)outputImageSizeBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
