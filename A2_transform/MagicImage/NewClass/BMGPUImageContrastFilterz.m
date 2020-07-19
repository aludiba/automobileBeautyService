#import "BMGPUImageContrastFilterz.h"
@implementation BMGPUImageContrastFilterz
+ (BOOL)Zinit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)FSetcontrast:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
