//
//  SDTextSetView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextSetView.h"
@interface SDTextSetView()
@property(nonatomic, strong)UILabel *textFontLabel;
@property(nonatomic, strong)UILabel *sliderMinLabel;
@property(nonatomic, strong)UISlider *slider;
@property(nonatomic, strong)UILabel *sliderMaxLabel;
@property(nonatomic, strong)UILabel *textColorLabel;
@property(nonatomic, strong)UIView *colorTipsView;
@property(nonatomic, strong)UIView *colorsView;
@end
@implementation SDTextSetView
#pragma mark - actions
-(void)sliderValueChanged:(UISlider *)slider{
    
}
#pragma mark - getters
- (UILabel *)textFontLabel{
    if (!_textFontLabel) {
        _textFontLabel = [[UILabel alloc] init];
        _textFontLabel.textColor = [UIColor blackColor];
        [_textFontLabel setFont:[UIFont systemFontOfSize:12]];
        _textFontLabel.text = @"字体大小:12";
    }
    return _textFontLabel;
}
- (UILabel *)sliderMinLabel{
    if (!_sliderMinLabel) {
        _sliderMinLabel = [[UILabel alloc] init];
        _sliderMinLabel.textColor = [UIColor blackColor];
        _sliderMinLabel.font = [UIFont systemFontOfSize:12];
    }
    return _sliderMinLabel;
}
- (UISlider *)slider{
    if (!_slider) {
        _slider = [[UISlider alloc] init];
        _slider.minimumValue = 0.0;
        _slider.maximumValue = 100.0;
        _slider.value = (7/30) * 100;
        [_slider setContinuous:YES];
        [_slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _slider;
}
- (UILabel *)sliderMaxLabel{
    if (!_sliderMaxLabel) {
        _sliderMaxLabel = [[UILabel alloc] init];
        _sliderMaxLabel.textColor = [UIColor blackColor];
        _sliderMaxLabel.font = [UIFont systemFontOfSize:12];
    }
    return _sliderMaxLabel;
}
@end
