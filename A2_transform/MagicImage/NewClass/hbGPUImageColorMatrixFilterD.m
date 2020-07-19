#import "hbGPUImageColorMatrixFilterD.h"
@implementation hbGPUImageColorMatrixFilterD
+ (BOOL)VInithb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)cSetintensityhb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)WSetcolormatrixhb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
