#import "hbGPUImageKuwaharaFilterj.h"
@implementation hbGPUImageKuwaharaFilterj
+ (BOOL)ainit:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)dSetradius:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
