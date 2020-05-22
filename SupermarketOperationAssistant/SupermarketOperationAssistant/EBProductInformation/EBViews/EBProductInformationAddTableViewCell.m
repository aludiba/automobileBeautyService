//
//  EBProductInformationAddTableViewCell.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import "EBProductInformationAddTableViewCell.h"
#import "EBProductInformationAddModel.h"
@interface EBProductInformationAddTableViewCell()<UITextViewDelegate> 
@property(nonatomic, strong)UITextView *EBeditableView;
@property(nonatomic, strong)UILabel *EBtitleLbl;
@property(nonatomic, strong)UILabel *EBhiddenLbl;
@property(nonatomic, strong)UIView *EBline;
@end
@implementation EBProductInformationAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.EBtitleLbl];
        [self.contentView addSubview:self.EBeditableView];
        [self.EBeditableView addSubview:self.EBhiddenLbl];
        [self.contentView addSubview:self.EBline];
        
        [self.EBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.EBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12.5);
            
            make.leading.equalTo(self.EBtitleLbl.mas_trailing).offset(8);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(22);
        }];
        [self.EBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.EBeditableView);
            
            make.leading.equalTo(self.EBeditableView).offset(4);
            make.trailing.equalTo(self.EBeditableView);
            make.height.mas_equalTo(18);
        }];
        [self.EBline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBeditableView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setEBViewModel:(EBProductInformationAddModel *)EBViewModel{
    _EBViewModel = EBViewModel;
    if ([_EBViewModel.EBTitle length]){
        self.EBtitleLbl.text = _EBViewModel.EBTitle;
    }else{
        self.EBtitleLbl.text = @"";
    }
    if ([_EBViewModel.EBDefault length]) {
        self.EBhiddenLbl.text = _EBViewModel.EBDefault;
    } else {
        self.EBhiddenLbl.text = @"";
    }
    if (_EBViewModel.EBContent.length) {
        self.EBeditableView.text = _EBViewModel.EBContent;
        self.EBhiddenLbl.hidden = YES;
    } else {
        self.EBeditableView.text = @"";
        self.EBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.EBhiddenLbl.hidden = NO;
    } else {
        self.EBhiddenLbl.hidden = YES;
    }
    CGRect EBbounds = textView.bounds;
    CGSize EBsize = [self.EBeditableView sizeThatFits:CGSizeMake(EBbounds.size.width, MAXFLOAT)];
    EBbounds.size = EBsize;
    textView.bounds = EBbounds;
    self.EBViewModel.EBContent = textView.text;
    self.EBcontentHeight = EBsize.height;
    if (self.EBeditBlock) {
        self.EBeditBlock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.EBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.EBhiddenLbl.hidden = NO;
    }else{
        self.EBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.EBhiddenLbl.hidden = NO;
    }else{
        self.EBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.EBhiddenLbl.hidden = NO;
    }else{
        self.EBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)EBtitleLbl{
    if (!_EBtitleLbl) {
        _EBtitleLbl = [[UILabel alloc] init];
        _EBtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _EBtitleLbl.textColor = [UIColor blueColor];
    }
    return _EBtitleLbl;
}
- (UILabel *)EBhiddenLbl{
    if (!_EBhiddenLbl) {
        _EBhiddenLbl = [[UILabel alloc] init];
        _EBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _EBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _EBhiddenLbl;
}
- (UITextView *)EBeditableView{
    if (!_EBeditableView) {
        _EBeditableView = [[UITextView alloc] init];
        _EBeditableView.delegate = self;
        _EBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _EBeditableView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _EBeditableView.scrollEnabled = NO;
        [_EBeditableView sizeToFit];
    }
    return _EBeditableView;
}
- (UIView *)EBline{
    if (!_EBline) {
        _EBline = [[UIView alloc] init];
        _EBline.backgroundColor = EBH_Color(226, 228, 232, 1);
    }
    return _EBline;
}
@end
