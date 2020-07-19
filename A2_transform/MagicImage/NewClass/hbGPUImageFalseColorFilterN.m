#import "hbGPUImageFalseColorFiltern.h"
@implementation hbGPUImageFalseColorFiltern
+ (BOOL)xInitbmbmbmhb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)xSetfirstcolorbmbmbmhb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)rSetsecondcolorbmbmbmhb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)iSetfirstcolorredgreenbluebmbmbmhb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)ySetsecondcolorredgreenbluebmbmbmhb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
