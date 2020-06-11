//
//  JBHomeAddNoteTableViewCell.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/11.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeAddNoteTableViewCell.h"
#import "JBLifeViewModel.h"

@interface JBHomeAddNoteTableViewCell()<UITextFieldDelegate,UITextViewDelegate>
@property(nonatomic, strong)UITextField *JBtitleContentTextField;
@property(nonatomic, strong)UITextView *JBcontentTextView;
@property(nonatomic, strong)UILabel *JBhiddenLbl;
@end
@implementation JBHomeAddNoteTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.JBtitleContentTextField];
        [self.contentView addSubview:self.JBcontentTextView];
        [self.JBcontentTextView addSubview:self.JBhiddenLbl];

        [self.JBtitleContentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(16);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(48);
        }];
        [self.JBcontentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JBtitleContentTextField.mas_bottom).offset(32);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(176);
            make.bottom.equalTo(self.contentView).offset(-12);
        }];
        [self.JBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JBcontentTextView).offset(4);
            
            make.leading.equalTo(self.JBcontentTextView).offset(4);
            make.trailing.equalTo(self.JBcontentTextView);
            make.height.mas_equalTo(18);
        }];
    }
    return self;
}
- (void)setJBlifeviewmodel:(JBLifeViewModel *)JBlifeviewmodel{
    _JBlifeviewmodel = JBlifeviewmodel;
    if ([_JBlifeviewmodel.JBDefault length]) {
        self.JBhiddenLbl.text = _JBlifeviewmodel.JBDefault;
    } else {
        self.JBhiddenLbl.text = @"";
    }
    if (_JBlifeviewmodel.JBContent.length) {
        self.JBcontentTextView.text = _JBlifeviewmodel.JBContent;
        self.JBhiddenLbl.hidden = YES;
    } else {
        self.JBcontentTextView.text = @"";
        self.JBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.JBlifeviewmodel.JBTitle = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.JBlifeviewmodel.JBTitle = textField.text;
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.JBhiddenLbl.hidden = NO;
    } else {
        self.JBhiddenLbl.hidden = YES;
    }
    CGRect JBbounds = textView.bounds;
    CGSize JBsize = [self.JBcontentTextView sizeThatFits:CGSizeMake(JBbounds.size.width, MAXFLOAT)];
    JBbounds.size = JBsize;
    textView.bounds = JBbounds;
    self.JBlifeviewmodel.JBContent = textView.text;
    self.JBcontentHeight = JBsize.height;
    if (self.JBcontentHeight > 176) {
        if (self.JBeditBlock) {
            self.JBeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.JBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.JBhiddenLbl.hidden = NO;
    }else{
        self.JBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.JBhiddenLbl.hidden = NO;
    }else{
        self.JBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.JBhiddenLbl.hidden = NO;
    }else{
        self.JBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UITextField *)JBtitleContentTextField{
    if (!_JBtitleContentTextField) {
        _JBtitleContentTextField = [[UITextField alloc] init];
        _JBtitleContentTextField.backgroundColor = JBH_Color(242, 242, 242, 1);
         _JBtitleContentTextField.layer.cornerRadius = 2.0f;
         _JBtitleContentTextField.layer.masksToBounds = YES;
        _JBtitleContentTextField.delegate = self;
        _JBtitleContentTextField.textColor = [UIColor blackColor];
        _JBtitleContentTextField.font = [UIFont systemFontOfSize:16];
        _JBtitleContentTextField.placeholder = NSLocalizedString(@"请输入标题", nil);
    }
    return _JBtitleContentTextField;
}
- (UILabel *)JBhiddenLbl{
    if (!_JBhiddenLbl) {
        _JBhiddenLbl = [[UILabel alloc] init];
        _JBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _JBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _JBhiddenLbl;
}
- (UITextView *)JBcontentTextView{
    if (!_JBcontentTextView) {
        _JBcontentTextView = [[UITextView alloc] init];
        _JBcontentTextView.backgroundColor = JBH_Color(242, 242, 242, 1);
        _JBcontentTextView.layer.cornerRadius = 8.0f;
        _JBcontentTextView.layer.masksToBounds = YES;
        _JBcontentTextView.delegate = self;
        _JBcontentTextView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _JBcontentTextView.textColor = [UIColor blackColor];
        _JBcontentTextView.scrollEnabled = NO;
        [_JBcontentTextView sizeToFit];
    }
    return _JBcontentTextView;
}
@end
