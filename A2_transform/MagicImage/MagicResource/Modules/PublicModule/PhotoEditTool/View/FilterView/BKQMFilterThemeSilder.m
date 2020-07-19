#import "BKQMFilterThemeSilder.h"
#import <Masonry.h>
#define kThemeSliderDefaultValue     0.5f
#define kFilterThemeSilderTag        1
@interface BKQMFilterThemeSilder()
@property (nonatomic, strong) UISlider *BKslider;
@property (nonatomic, strong) UILabel *BKsliderLabel;
@end
@implementation BKQMFilterThemeSilder
- (instancetype)init
{
    return [self initWithFrame:CGRectZero];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self BKbuildOneSlider];
        [self setTitle:@"Filter slider"];
    }
    return self;
}
- (void)BKbuildOneSlider
{
    UISlider *BKslider = [[UISlider alloc] initWithFrame:CGRectZero];
    BKslider.tintColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    BKslider.maximumTrackTintColor = [UIColor whiteColor];
    BKslider.value = kThemeSliderDefaultValue;
    [BKslider setTag:kFilterThemeSilderTag];
    self.BKslider = BKslider;
    [BKslider addTarget:self action:@selector(BKsliderTouchEnd:)
                 forControlEvents:UIControlEventTouchUpInside];
    [BKslider addTarget:self action:@selector(BKsliderValueChange:)
                 forControlEvents:UIControlEventValueChanged];
    [self.contentView addSubview:BKslider];
    [BKslider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(50);
        make.right.offset(-50);
        make.bottom.offset(-50);
        make.height.mas_equalTo(20);
    }];
    UIView *BKsliderLabelBg = [[UIView alloc] initWithFrame:CGRectZero];
    BKsliderLabelBg.backgroundColor = [UIColor colorWithRed:8/255.0 green:157/255.0 blue:184/255.0 alpha:1.0];
    BKsliderLabelBg.layer.cornerRadius = 15.0f;
    [self.contentView addSubview:BKsliderLabelBg];
    [BKsliderLabelBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(70);
        make.bottom.offset(-80);
        make.height.mas_equalTo(30);
        make.centerX.mas_equalTo(0);
    }];
    UILabel *BKsliderLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    BKsliderLabel.textAlignment = NSTextAlignmentCenter;
    BKsliderLabel.font = [UIFont systemFontOfSize:20];
    BKsliderLabel.textColor = [UIColor whiteColor];
    BKsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(BKslider.value*100)];
    self.BKsliderLabel = BKsliderLabel;
    [self.contentView addSubview:BKsliderLabel];
    [BKsliderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.bottom.offset(-80);
        make.height.mas_equalTo(30);
        make.centerX.mas_equalTo(0);
    }];
}
#pragma mark - Events
- (void)BKsliderValueChange:(UISlider *)BKslider
{
    self.BKsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(BKslider.value*100)];
}
- (void)BKsliderTouchEnd:(UISlider *)BKslider
{
    self.BKsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(BKslider.value*100)];
    if (_BKsliderValueChangeBlock) {
        _BKsliderValueChangeBlock(BKslider.tag, BKslider.value);
    }
}
#pragma mark - Public
- (void)BKshowWithValue:(float)BKvalue
{
    self.BKslider.value = BKvalue;
    self.BKsliderLabel.text = [NSString stringWithFormat:@"%.0f", floor(self.BKslider.value*100)];
    [self show];
}
@end
