//
//  ALCargoEditableTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALCargoEditableTableViewCell.h"
#import "ALCargoAddViewModel.h"

@interface ALCargoEditableTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *ALeditableView;
@property(nonatomic, strong)UILabel *ALtitleLbl;
@property(nonatomic, strong)UILabel *ALhiddenLbl;
@property(nonatomic, strong)UIView *ALline;
@end
@implementation ALCargoEditableTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.ALtitleLbl];
        [self.contentView addSubview:self.ALeditableView];
        [self.ALeditableView addSubview:self.ALhiddenLbl];
        [self.contentView addSubview:self.ALline];
        
        [self.ALtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.ALeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12.5);
            
            make.leading.equalTo(self.ALtitleLbl.mas_trailing).offset(8);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(22);
        }];
        [self.ALhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.ALeditableView);
            
            make.leading.equalTo(self.ALeditableView).offset(4);
            make.trailing.equalTo(self.ALeditableView);
            make.height.mas_equalTo(18);
        }];
        [self.ALline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALeditableView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setALViewModel:(ALCargoAddViewModel *)ALViewModel{
    _ALViewModel = ALViewModel;
    if ([_ALViewModel.ALTitle length]){
        self.ALtitleLbl.text = _ALViewModel.ALTitle;
    }else{
        self.ALtitleLbl.text = @"";
    }
    if ([_ALViewModel.ALDefault length]) {
        self.ALhiddenLbl.text = _ALViewModel.ALDefault;
    } else {
        self.ALhiddenLbl.text = @"";
    }
    if (_ALViewModel.ALContent.length) {
        self.ALeditableView.text = _ALViewModel.ALContent;
        self.ALhiddenLbl.hidden = YES;
    } else {
        self.ALeditableView.text = @"";
        self.ALhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.ALhiddenLbl.hidden = NO;
    } else {
        self.ALhiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.ALeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.ALViewModel.ALContent = textView.text;
    self.ALcontentHeight = size.height;
    if (self.ALeditBlock) {
        self.ALeditBlock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.ALhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.ALhiddenLbl.hidden = NO;
    }else{
        self.ALhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.ALhiddenLbl.hidden = NO;
    }else{
        self.ALhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.ALhiddenLbl.hidden = NO;
    }else{
        self.ALhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)ALtitleLbl{
    if (!_ALtitleLbl) {
        _ALtitleLbl = [[UILabel alloc] init];
        _ALtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _ALtitleLbl.textColor = [UIColor blackColor];
    }
    return _ALtitleLbl;
}
- (UILabel *)ALhiddenLbl{
    if (!_ALhiddenLbl) {
        _ALhiddenLbl = [[UILabel alloc] init];
        _ALhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _ALhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _ALhiddenLbl;
}
- (UITextView *)ALeditableView{
    if (!_ALeditableView) {
        _ALeditableView = [[UITextView alloc] init];
        _ALeditableView.delegate = self;
        _ALeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _ALeditableView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _ALeditableView.scrollEnabled = NO;
        [_ALeditableView sizeToFit];
    }
    return _ALeditableView;
}
- (UIView *)ALline{
    if (!_ALline) {
        _ALline = [[UIView alloc] init];
        _ALline.backgroundColor = ALH_Color(226, 228, 232, 1);
    }
    return _ALline;
}

@end
