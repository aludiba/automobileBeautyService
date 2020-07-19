#import <UIKit/UIKit.h>
#import "RTImagePickerUtils.h"
@class RTImagePickerViewController;
@class PHAssetCollection;
@interface RTAssetCollectionViewController : UICollectionViewController
@property (nonatomic, weak) RTImagePickerViewController     *imagePickerController;
@property (nonatomic, strong) PHAssetCollection             *assetCollection;
- (void)scrollToBottomAnimated:(BOOL)animated;
@end
