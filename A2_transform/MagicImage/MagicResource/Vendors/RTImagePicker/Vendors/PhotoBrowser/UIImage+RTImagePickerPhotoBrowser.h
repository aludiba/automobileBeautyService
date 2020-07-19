#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface UIImage (RTImagePickerPhotoBrowser)
+ (UIImage *)imageForResourcePath:(NSString *)path ofType:(NSString *)type inBundle:(NSBundle *)bundle;
+ (UIImage *)clearImageWithSize:(CGSize)size;
@end
