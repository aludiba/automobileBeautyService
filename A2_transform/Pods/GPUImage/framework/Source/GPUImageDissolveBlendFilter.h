#import "GPUImageTwoInputFilter.h"
@interface GPUImageDissolveBlendFilter : GPUImageTwoInputFilter
{
    GLint mixUniform;
}
@property(readwrite, nonatomic) CGFloat mix; 
@end
