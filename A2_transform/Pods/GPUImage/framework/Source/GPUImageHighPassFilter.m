#import "GPUImageHighPassFilter.h"
@implementation GPUImageHighPassFilter
@synthesize filterStrength;
- (id)init;
{
    if (!(self = [super init]))
    {
		return nil;
    }
    lowPassFilter = [[GPUImageLowPassFilter alloc] init];
    [self addFilter:lowPassFilter];
    differenceBlendFilter = [[GPUImageDifferenceBlendFilter alloc] init];
    [self addFilter:differenceBlendFilter];
    [lowPassFilter addTarget:differenceBlendFilter atTextureLocation:1];
    self.initialFilters = [NSArray arrayWithObjects:lowPassFilter, differenceBlendFilter, nil];
    self.terminalFilter = differenceBlendFilter;
    self.filterStrength = 0.5;
    return self;
}
#pragma mark -
#pragma mark Accessors
- (void)setFilterStrength:(CGFloat)newValue;
{
    lowPassFilter.filterStrength = newValue;
}
- (CGFloat)filterStrength;
{
    return lowPassFilter.filterStrength;
}
@end
