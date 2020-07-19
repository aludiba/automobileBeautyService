#import "GPUImagePicture+Bm.h"
@implementation GPUImagePicture (Bm)
+ (BOOL)initWithURLBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)initWithDataBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initWithImageBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initWithCGImageBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initWithImageSmoothlyscaleoutputBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initWithCGImageSmoothlyscaleoutputBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)removeAllTargetsBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)processImageBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)processImageWithCompletionHandlerBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)processImageUpToFilterWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)outputImageSizeBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
