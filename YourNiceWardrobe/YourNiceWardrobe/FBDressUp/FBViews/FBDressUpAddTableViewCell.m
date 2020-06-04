//
//  FBDressUpAddTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDressUpAddTableViewCell.h"
#import "FBDressUpAddModel.h"

@interface FBDressUpAddTableViewCell()<UITextFieldDelegate,UITextViewDelegate>
@property(nonatomic, strong)UILabel *FBtitleLbl;
@property(nonatomic, strong)UITextField *FBtitleContentTextField;
@property(nonatomic, strong)UITextView *FBcontentTextView;
@property(nonatomic, strong)UILabel *FBhiddenLbl;
@property(nonatomic, strong)UIView *FBline;
@end
@implementation FBDressUpAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBtitleLbl];
        [self.contentView addSubview:self.FBtitleContentTextField];
        [self.contentView addSubview:self.FBcontentTextView];
        [self.FBcontentTextView addSubview:self.FBhiddenLbl];
        [self.contentView addSubview:self.FBline];

        [self.FBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(46);
            make.height.mas_equalTo(16);
        }];
        [self.FBtitleContentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.FBtitleLbl.mas_trailing).offset(3);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(17);
        }];
        [self.FBcontentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBtitleContentTextField.mas_bottom).offset(25);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(176);
        }];
        [self.FBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBcontentTextView).offset(4);
            
            make.leading.equalTo(self.FBcontentTextView).offset(4);
            make.trailing.equalTo(self.FBcontentTextView);
            make.height.mas_equalTo(18);
        }];
        [self.FBline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBcontentTextView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setFBViewModel:(FBDressUpAddModel *)FBViewModel{
    _FBViewModel = FBViewModel;
    if ([_FBViewModel.FBDefault length]) {
        self.FBhiddenLbl.text = _FBViewModel.FBDefault;
    } else {
        self.FBhiddenLbl.text = @"";
    }
    if (_FBViewModel.FBContent.length) {
        self.FBcontentTextView.text = _FBViewModel.FBContent;
        self.FBhiddenLbl.hidden = YES;
    } else {
        self.FBcontentTextView.text = @"";
        self.FBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.FBViewModel.FBTitle = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.FBViewModel.FBTitle = textField.text;
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.FBhiddenLbl.hidden = NO;
    } else {
        self.FBhiddenLbl.hidden = YES;
    }
    CGRect FBbounds = textView.bounds;
    CGSize FBsize = [self.FBcontentTextView sizeThatFits:CGSizeMake(FBbounds.size.width, MAXFLOAT)];
    FBbounds.size = FBsize;
    textView.bounds = FBbounds;
    self.FBViewModel.FBContent = textView.text;
    self.FBcontentHeight = FBsize.height;
    if (self.FBcontentHeight > 176) {
        if (self.FBeditBlock) {
            self.FBeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.FBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)FBtitleLbl{
    if (!_FBtitleLbl) {
        _FBtitleLbl = [[UILabel alloc] init];
        _FBtitleLbl.textColor = [UIColor blueColor];
        _FBtitleLbl.font = [UIFont systemFontOfSize:15];
        _FBtitleLbl.text = @"标题:";
    }
    return _FBtitleLbl;
}
- (UITextField *)FBtitleContentTextField{
    if (!_FBtitleContentTextField) {
        _FBtitleContentTextField = [[UITextField alloc] init];
        _FBtitleContentTextField.delegate = self;
        _FBtitleContentTextField.textColor = [UIColor blackColor];
        _FBtitleContentTextField.font = [UIFont systemFontOfSize:16];
        _FBtitleContentTextField.placeholder = @"请输入打扮穿搭标题";
    }
    return _FBtitleContentTextField;
}
- (UILabel *)FBhiddenLbl{
    if (!_FBhiddenLbl) {
        _FBhiddenLbl = [[UILabel alloc] init];
        _FBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _FBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _FBhiddenLbl;
}
- (UITextView *)FBcontentTextView{
    if (!_FBcontentTextView) {
        _FBcontentTextView = [[UITextView alloc] init];
        _FBcontentTextView.backgroundColor = FBH_Color(242, 242, 242, 1);
        _FBcontentTextView.layer.cornerRadius = 12.0f;
        _FBcontentTextView.layer.masksToBounds = YES;
        _FBcontentTextView.delegate = self;
        _FBcontentTextView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _FBcontentTextView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _FBcontentTextView.scrollEnabled = NO;
        [_FBcontentTextView sizeToFit];
    }
    return _FBcontentTextView;
}
- (UIView *)FBline{
    if (!_FBline) {
        _FBline = [[UIView alloc] init];
        _FBline.backgroundColor = FBH_Color(226, 228, 232, 1);
    }
    return _FBline;
}
@end
