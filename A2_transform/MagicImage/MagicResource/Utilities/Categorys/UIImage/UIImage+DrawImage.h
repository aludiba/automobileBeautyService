#import <UIKit/UIKit.h>
typedef enum {
    UIImageDrawImageClipped,
    UIImageDrawImagExpand,  
} UIImageDrawImageMode;
@interface UIImage (DrawImage)
- (UIImage *)imageWithSubImage:(UIImage *)image frame:(CGRect)frame;
- (UIImage *)imageMosaicWithSubImage:(UIImage *)image frame:(CGRect)frame;
- (UIImage *)imageWithTransform:(CGAffineTransform)transform drawMode:(UIImageDrawImageMode)mode;
@end
