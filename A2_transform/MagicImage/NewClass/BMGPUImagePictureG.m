#import "BMGPUImagePictureG.h"
@implementation BMGPUImagePictureG
+ (BOOL)YReplacetexturewithsubimage:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)VReplacetexturewithsubcgimage:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)TReplacetexturewithsubimagegInrect:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)YReplacetexturewithsubcgimagerInrect:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
