#import "hbGPUImageRGBFilterc.h"
@implementation hbGPUImageRGBFilterc
+ (BOOL)Zinit:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)iSetred:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)ySetgreen:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)qSetblue:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
