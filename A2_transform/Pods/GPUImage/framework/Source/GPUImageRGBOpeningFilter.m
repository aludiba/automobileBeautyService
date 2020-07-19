#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
@implementation GPUImageRGBOpeningFilter
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
    erosionFilter = [[GPUImageRGBErosionFilter alloc] initWithRadius:radius];
    [self addFilter:erosionFilter];
    dilationFilter = [[GPUImageRGBDilationFilter alloc] initWithRadius:radius];
    [self addFilter:dilationFilter];
    [erosionFilter addTarget:dilationFilter];
    self.initialFilters = [NSArray arrayWithObjects:erosionFilter, nil];
    self.terminalFilter = dilationFilter;
    return self;
}
@end
