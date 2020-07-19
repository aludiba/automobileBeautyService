@implementation UIColor (Hex)
+ (NSUInteger)integerValueFromHexString:(NSString *)hex
{
    int result = 0;
    sscanf([hex UTF8String], "%x", &result);
    return result;
}
+ (UIColor *)colorWithHexString:(NSString *)hex
{
    hex = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""];
    CGFloat alpha = 1.0f;
    if ([hex length] == 8)
    {
        alpha = [self integerValueFromHexString:[hex substringWithRange:NSMakeRange(6, 2)]]/255.0;
        hex = [hex substringToIndex:6];
    }
    return [UIColor colorWithHexString:hex alpha:alpha];
}
+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha
{
    hex = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if ([hex length]!=6 && [hex length]!=3)
    {
        return nil;
    }
    NSUInteger digits = [hex length]/3;
    CGFloat maxValue = (digits==1)?15.0:255.0;
    CGFloat red = [self integerValueFromHexString:[hex substringWithRange:NSMakeRange(0, digits)]]/maxValue;
    CGFloat green = [self integerValueFromHexString:[hex substringWithRange:NSMakeRange(digits, digits)]]/maxValue;
    CGFloat blue = [self integerValueFromHexString:[hex substringWithRange:NSMakeRange(2*digits, digits)]]/maxValue;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}
+ (UIColor *)colorWithGrayScale:(NSInteger)grayScale
{
    return [UIColor colorWithRed:grayScale/255.0f green:grayScale/255.0f blue:grayScale/255.0f alpha:1];
}
@end
