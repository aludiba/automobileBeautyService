#import "UIImage+Text.h"
@implementation UIImage (Text)
+ (UIImage *)drawText:(NSString *)text inImage:(UIImage *)image atPoint:(CGPoint)point {
    UIFont *font = [UIFont boldSystemFontOfSize:12];
    UIGraphicsBeginImageContext(image.size);
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    CGRect rect = CGRectMake(point.x, point.y, image.size.width, image.size.height);
    [[UIColor whiteColor] set];
    NSDictionary *attributes = @{NSFontAttributeName : font};
    [text drawInRect:rect withAttributes:attributes];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
+ (UIImage *)drawDate:(NSString *)text InImage:(UIImage *)image font:(UIFont *)font point:(CGPoint)point{
    UIGraphicsBeginImageContext(image.size);
    CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);
    [image drawInRect:rect];
    rect = CGRectMake(point.x, point.y, image.size.width, image.size.height);
    [[UIColor whiteColor] set];
    NSDictionary *attributes = @{NSFontAttributeName : font , NSForegroundColorAttributeName:[UIColor whiteColor]};
    [text drawInRect:rect withAttributes:attributes];
    UIImage *newimg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newimg;
}
+ (float)getNameCharNum:(NSString *)a_str
{
    if (nil==a_str) {
        return 0;
    }
    float ret_num=0;
    NSInteger len=[a_str length];
    for (int i=0; i<len; i++) {
        unichar c = [a_str characterAtIndex:i];
        if((c>=97 && c<=122)||(c>=32 && c<=64)){ 
            ret_num = ret_num +0.5;
        }else if(c <= 90&&c>=65){
            ret_num = ret_num +0.8;
        }else{
            ret_num += 1.0;
        }
    }
    return ret_num;
}
@end
