#import "hbGPUImageKuwaharaFilterl.h"
@implementation hbGPUImageKuwaharaFilterl
+ (BOOL)Zinit:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)dSetradius:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
