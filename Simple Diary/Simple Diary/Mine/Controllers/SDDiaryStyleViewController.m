//
//  SDDiaryStyleViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/8/9.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDDiaryStyleViewController.h"

@interface SDDiaryStyleViewController ()
@property(nonatomic, strong)UILabel *fontLabel;
@property(nonatomic, strong)UISlider *fontSlider;//字体调节控件
@property(nonatomic, strong)UILabel *textColorLabel;
@property(nonatomic, strong)UIView *textColorView;
@property(nonatomic, strong)UISlider *textColorRSlider;
@property(nonatomic, strong)UISlider *textColorGSlider;
@property(nonatomic, strong)UISlider *textColorBSlider;
@property(nonatomic, strong)UILabel *themeColorLabel;
@property(nonatomic, strong)UIView *themeColorView;
@property(nonatomic, strong)UISlider *themeColorRSlider;
@property(nonatomic, strong)UISlider *themeColorGSlider;
@property(nonatomic, strong)UISlider *themeColorBSlider;
@end

@implementation SDDiaryStyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"日记样式", nil);
    [self setContent];
}
- (void)setContent{
    [self.view addSubview:self.fontLabel];
    [self.view addSubview:self.fontSlider];
    [self.view addSubview:self.textColorLabel];
    [self.view addSubview:self.textColorView];
    [self.view addSubview:self.textColorRSlider];
    [self.view addSubview:self.textColorGSlider];
    [self.view addSubview:self.textColorBSlider];
    [self.view addSubview:self.themeColorLabel];
    [self.view addSubview:self.themeColorView];
    [self.view addSubview:self.themeColorRSlider];
    [self.view addSubview:self.themeColorGSlider];
    [self.view addSubview:self.themeColorBSlider];
    
    [self.fontLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(42);
    }];
    [self.fontSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fontLabel.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.textColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.fontSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(21);
    }];
    [self.textColorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.textColorLabel);
        make.leading.equalTo(self.textColorLabel.mas_trailing).offset(10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(21);
    }];
    [self.textColorRSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.textColorGSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorRSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.textColorBSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorGSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textColorBSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.themeColorLabel);
        make.leading.equalTo(self.textColorLabel.mas_trailing).offset(10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorRSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorGSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorRSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
    [self.themeColorBSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.themeColorGSlider.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.height.mas_equalTo(21);
    }];
}
#pragma mark - actions
- (void)sliderValueChanged:(UISlider *)slider{
    
}
#pragma mark - 属性懒加载
- (UILabel *)fontLabel{
    if (!_fontLabel) {
        _fontLabel = [[UILabel alloc] init];
        _fontLabel.textColor = [UIColor blackColor];
        NSNumber *fontSize = [[NSUserDefaults standardUserDefaults] objectForKey:FONTSIZE];
        CGFloat fontsize = 17;
        if (fontSize) {
            fontsize = [fontSize floatValue];
        }
        _fontLabel.text = [NSString stringWithFormat:@"%@ %.lf",NSLocalizedString(@"字体大小", nil),fontsize];
        _fontLabel.font = [UIFont systemFontOfSize:fontsize];
        [_fontLabel sizeToFit];
        _fontLabel.numberOfLines = 0;
    }
    return _fontLabel;
}
- (UISlider *)fontSlider{
    if (!_fontSlider) {
        _fontSlider = [[UISlider alloc] init];
        _fontSlider.tag = 100;
        _fontSlider.minimumValue = 10.0;
        _fontSlider.maximumValue = 40.0;
        NSNumber *fontSize = [[NSUserDefaults standardUserDefaults] objectForKey:FONTSIZE];
        CGFloat fontsize = 17;
        if (fontSize) {
            fontsize = [fontSize floatValue];
        }
        _fontSlider.value = fontsize;
        [_fontSlider setContinuous:YES];
        [_fontSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _fontSlider;
}
- (UILabel *)textColorLabel{
    if (!_textColorLabel) {
        _textColorLabel = [[UILabel alloc] init];
        _textColorLabel.textColor = [UIColor blackColor];
        _textColorLabel.text = NSLocalizedString(@"字体颜色", nil);
        _textColorLabel.font = [UIFont systemFontOfSize:17];
    }
    return _textColorLabel;
}
- (UIView *)textColorView{
    if (!_textColorView) {
        _textColorView = [[UIView alloc] init];
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        CGFloat R = [[textColorDic objectForKey:@"R"] floatValue];
        CGFloat G = [[textColorDic objectForKey:@"G"] floatValue];
        CGFloat B = [[textColorDic objectForKey:@"B"] floatValue];
        _textColorView.backgroundColor = SDH_Color(R, G, B, 1);
    }
    return _textColorView;
}
- (UISlider *)textColorRSlider{
    if (!_textColorRSlider) {
        _textColorRSlider = [[UISlider alloc] init];
        _textColorRSlider.tag = 101;
        _textColorRSlider.minimumValue = 0;
        _textColorRSlider.maximumValue = 255;
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        CGFloat R = [[textColorDic objectForKey:@"R"] floatValue];
        
        _textColorRSlider.value = R;
        [_textColorRSlider setContinuous:YES];
        [_textColorRSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _textColorRSlider;
}
- (UISlider *)textColorGSlider{
    if (!_textColorGSlider) {
        _textColorGSlider = [[UISlider alloc] init];
        _textColorGSlider.tag = 102;
        _textColorGSlider.minimumValue = 0;
        _textColorGSlider.maximumValue = 255;
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        CGFloat G = [[textColorDic objectForKey:@"G"] floatValue];
        _textColorGSlider.value = G;
        [_textColorGSlider setContinuous:YES];
        [_textColorGSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _textColorGSlider;
}
- (UISlider *)textColorBSlider{
    if (!_textColorBSlider) {
        _textColorBSlider = [[UISlider alloc] init];
        _textColorBSlider.tag = 103;
        _textColorBSlider.minimumValue = 0;
        _textColorBSlider.maximumValue = 255;
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        CGFloat B = [[textColorDic objectForKey:@"B"] floatValue];
        _textColorBSlider.value = B;
        [_textColorBSlider setContinuous:YES];
        [_textColorBSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _textColorBSlider;
}
- (UILabel *)themeColorLabel{
    if (!_themeColorLabel) {
        _themeColorLabel = [[UILabel alloc] init];
        _themeColorLabel.textColor = [UIColor blackColor];
        _themeColorLabel.text = NSLocalizedString(@"主题颜色", nil);
        _themeColorLabel.font = [UIFont systemFontOfSize:17];
    }
    return _themeColorLabel;
}
- (UIView *)themeColorView{
    if (!_themeColorView) {
        _themeColorView = [[UIView alloc] init];
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        CGFloat R = [[themeColorDic objectForKey:@"R"] floatValue];
        CGFloat G = [[themeColorDic objectForKey:@"G"] floatValue];
        CGFloat B = [[themeColorDic objectForKey:@"B"] floatValue];
        _themeColorView.backgroundColor = SDH_Color(R, G, B, 1);
    }
    return _themeColorView;
}
- (UISlider *)themeColorRSlider{
    if (!_themeColorRSlider) {
        _themeColorRSlider = [[UISlider alloc] init];
        _themeColorRSlider.tag = 104;
        _themeColorRSlider.minimumValue = 0;
        _themeColorRSlider.maximumValue = 255;
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        CGFloat R = [[themeColorDic objectForKey:@"R"] floatValue];
        _themeColorRSlider.value = R;
        [_themeColorRSlider setContinuous:YES];
        [_themeColorRSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _themeColorRSlider;
}
- (UISlider *)themeColorGSlider{
    if (!_themeColorGSlider) {
        _themeColorGSlider = [[UISlider alloc] init];
        _themeColorGSlider.tag = 105;
        _themeColorGSlider.minimumValue = 0;
        _themeColorGSlider.maximumValue = 255;
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        CGFloat G = [[themeColorDic objectForKey:@"G"] floatValue];
        _themeColorGSlider.value = G;
        [_themeColorGSlider setContinuous:YES];
        [_themeColorGSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _themeColorGSlider;
}
- (UISlider *)themeColorBSlider{
    if (!_themeColorBSlider) {
        _themeColorBSlider = [[UISlider alloc] init];
        _themeColorBSlider.tag = 106;
        _themeColorBSlider.minimumValue = 0;
        _themeColorBSlider.maximumValue = 255;
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        CGFloat B = [[themeColorDic objectForKey:@"B"] floatValue];
        _themeColorBSlider.value = B;
        [_themeColorBSlider setContinuous:YES];
        [_themeColorBSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _themeColorBSlider;
}
@end
