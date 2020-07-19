#import "GPUImageFilter.h"
#import "GPUImageHighlightShadowFilter.h"

@interface GPUImageHighlightShadowFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setShadowsHb:(NSInteger)hb;
+ (BOOL)setHighlightsHb:(NSInteger)hb;

@end
