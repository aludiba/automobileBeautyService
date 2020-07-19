#import "BMGPUImagePicturec.h"
@implementation BMGPUImagePicturec
+ (BOOL)wReplacetexturewithsubimage:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)PReplacetexturewithsubcgimage:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)wReplacetexturewithsubimageAInrect:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)KReplacetexturewithsubcgimageTInrect:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
