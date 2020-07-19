#import <UIKit/UIKit.h>
#import "GPUImageContext.h"
typedef enum {
    kGPUImageFillModeStretch,                       
    kGPUImageFillModePreserveAspectRatio,           
    kGPUImageFillModePreserveAspectRatioAndFill     
} GPUImageFillModeType; 
@interface GPUImageView : UIView <GPUImageInput>
{
    GPUImageRotationMode inputRotation;
}
@property(readwrite, nonatomic) GPUImageFillModeType fillMode;
@property(readonly, nonatomic) CGSize sizeInPixels;
@property(nonatomic) BOOL enabled;
- (void)setBackgroundColorRed:(GLfloat)redComponent green:(GLfloat)greenComponent blue:(GLfloat)blueComponent alpha:(GLfloat)alphaComponent;
- (void)setCurrentlyReceivingMonochromeInput:(BOOL)newValue;
@end
