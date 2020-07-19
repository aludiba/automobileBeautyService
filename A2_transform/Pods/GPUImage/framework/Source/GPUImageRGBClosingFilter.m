#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
@implementation GPUImageRGBClosingFilter
- (id)init;
{
    if (!(self = [self initWithRadius:1]))
    {
		return nil;
    }
    return self;
}
- (id)initWithRadius:(NSUInteger)radius;
{
    if (!(self = [super init]))
    {
		return nil;
    }
    dilationFilter = [[GPUImageRGBDilationFilter alloc] initWithRadius:radius];
    [self addFilter:dilationFilter];
    erosionFilter = [[GPUImageRGBErosionFilter alloc] initWithRadius:radius];
    [self addFilter:erosionFilter];
    [dilationFilter addTarget:erosionFilter];
    self.initialFilters = [NSArray arrayWithObjects:dilationFilter, nil];
    self.terminalFilter = erosionFilter;
    return self;
}
@end
