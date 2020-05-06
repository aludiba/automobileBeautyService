//
//  BCDressUpAddTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDressUpAddTableViewCell.h"
#import "BCDressUpAddModel.h"

@interface BCDressUpAddTableViewCell()<UITextFieldDelegate,UITextViewDelegate>
@property(nonatomic, strong)UILabel *BCtitleLbl;
@property(nonatomic, strong)UITextField *BCtitleContentTextField;
@property(nonatomic, strong)UITextView *BCcontentTextView;
@property(nonatomic, strong)UILabel *BChiddenLbl;
@property(nonatomic, strong)UIView *BCline;
@end
@implementation BCDressUpAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCtitleLbl];
        [self.contentView addSubview:self.BCtitleContentTextField];
        [self.contentView addSubview:self.BCcontentTextView];
        [self.BCcontentTextView addSubview:self.BChiddenLbl];
        [self.contentView addSubview:self.BCline];

        [self.BCtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(46);
            make.height.mas_equalTo(16);
        }];
        [self.BCtitleContentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.BCtitleLbl.mas_trailing).offset(3);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(17);
        }];
        [self.BCcontentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCtitleContentTextField.mas_bottom).offset(25);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(176);
        }];
        [self.BChiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCcontentTextView).offset(4);
            
            make.leading.equalTo(self.BCcontentTextView).offset(4);
            make.trailing.equalTo(self.BCcontentTextView);
            make.height.mas_equalTo(18);
        }];
        [self.BCline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCcontentTextView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setBCViewModel:(BCDressUpAddModel *)BCViewModel{
    _BCViewModel = BCViewModel;
    if ([_BCViewModel.BCDefault length]) {
        self.BChiddenLbl.text = _BCViewModel.BCDefault;
    } else {
        self.BChiddenLbl.text = @"";
    }
    if (_BCViewModel.BCContent.length) {
        self.BCcontentTextView.text = _BCViewModel.BCContent;
        self.BChiddenLbl.hidden = YES;
    } else {
        self.BCcontentTextView.text = @"";
        self.BChiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.BCViewModel.BCTitle = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.BCViewModel.BCTitle = textField.text;
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.BChiddenLbl.hidden = NO;
    } else {
        self.BChiddenLbl.hidden = YES;
    }
    CGRect BCbounds = textView.bounds;
    CGSize BCsize = [self.BCcontentTextView sizeThatFits:CGSizeMake(BCbounds.size.width, MAXFLOAT)];
    BCbounds.size = BCsize;
    textView.bounds = BCbounds;
    self.BCViewModel.BCContent = textView.text;
    self.BCcontentHeight = BCsize.height;
    if (self.BCcontentHeight > 176) {
        if (self.BCeditBlock) {
            self.BCeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.BChiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)BCtitleLbl{
    if (!_BCtitleLbl) {
        _BCtitleLbl = [[UILabel alloc] init];
        _BCtitleLbl.textColor = [UIColor blueColor];
        _BCtitleLbl.font = [UIFont systemFontOfSize:15];
        _BCtitleLbl.text = @"标题:";
    }
    return _BCtitleLbl;
}
- (UITextField *)BCtitleContentTextField{
    if (!_BCtitleContentTextField) {
        _BCtitleContentTextField = [[UITextField alloc] init];
        _BCtitleContentTextField.delegate = self;
        _BCtitleContentTextField.textColor = [UIColor blackColor];
        _BCtitleContentTextField.font = [UIFont systemFontOfSize:16];
        _BCtitleContentTextField.placeholder = @"请输入打扮穿搭标题";
    }
    return _BCtitleContentTextField;
}
- (UILabel *)BChiddenLbl{
    if (!_BChiddenLbl) {
        _BChiddenLbl = [[UILabel alloc] init];
        _BChiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _BChiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _BChiddenLbl;
}
- (UITextView *)BCcontentTextView{
    if (!_BCcontentTextView) {
        _BCcontentTextView = [[UITextView alloc] init];
        _BCcontentTextView.backgroundColor = BCH_Color(242, 242, 242, 1);
        _BCcontentTextView.layer.cornerRadius = 12.0f;
        _BCcontentTextView.layer.masksToBounds = YES;
        _BCcontentTextView.delegate = self;
        _BCcontentTextView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _BCcontentTextView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _BCcontentTextView.scrollEnabled = NO;
        [_BCcontentTextView sizeToFit];
    }
    return _BCcontentTextView;
}
- (UIView *)BCline{
    if (!_BCline) {
        _BCline = [[UIView alloc] init];
        _BCline.backgroundColor = BCH_Color(226, 228, 232, 1);
    }
    return _BCline;
}
@end
