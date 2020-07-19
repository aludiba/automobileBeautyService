#import "hbGPUImageRGBDilationFilterm.h"
@implementation hbGPUImageRGBDilationFilterm
+ (BOOL)BInitwithradius:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)Zinit:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
