//
//  FBproblemFeedbackTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBproblemFeedbackTableViewCell.h"
#import "FBDressUpAddModel.h"

@interface FBproblemFeedbackTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *FBeditableView;
@property(nonatomic, strong)UILabel *FBtitleLbl;
@property(nonatomic, strong)UILabel *FBhiddenLbl;
//@property(nonatomic, strong)UIView *FBline;
@end
@implementation FBproblemFeedbackTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBtitleLbl];
        [self.contentView addSubview:self.FBeditableView];
        [self.FBeditableView addSubview:self.FBhiddenLbl];
//        [self.contentView addSubview:self.FBline];
        
        [self.FBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.FBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBtitleLbl.mas_bottom).offset(15);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(110);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-12.5);
        }];
        [self.FBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBeditableView).offset(6);
            
            make.leading.equalTo(self.FBeditableView).offset(6);
            make.trailing.equalTo(self.FBeditableView).offset(-6);
            make.height.mas_equalTo(18);
        }];
    }
    return self;
}
- (void)setFBViewModel:(FBDressUpAddModel *)FBViewModel{
    _FBViewModel = FBViewModel;
    if ([_FBViewModel.FBTitle length]){
        self.FBtitleLbl.text = _FBViewModel.FBTitle;
    }else{
        self.FBtitleLbl.text = @"";
    }
    if ([_FBViewModel.FBDefault length]) {
        self.FBhiddenLbl.text = _FBViewModel.FBDefault;
    } else {
        self.FBhiddenLbl.text = @"";
    }
    if (_FBViewModel.FBContent.length) {
        self.FBeditableView.text = _FBViewModel.FBContent;
        self.FBhiddenLbl.hidden = YES;
    } else {
        self.FBeditableView.text = @"";
        self.FBhiddenLbl.hidden = NO;
    }
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
    CGRect bounds = textView.bounds;
    CGSize size = [self.FBeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.FBViewModel.FBContent = textView.text;
    self.FBcontentHeight = size.height;
    if (self.FBcontentHeight > 110) {
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
        _FBtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:19];
        _FBtitleLbl.textColor = [UIColor blueColor];
    }
    return _FBtitleLbl;
}
- (UILabel *)FBhiddenLbl{
    if (!_FBhiddenLbl) {
        _FBhiddenLbl = [[UILabel alloc] init];
        _FBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _FBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _FBhiddenLbl;
}
- (UITextView *)FBeditableView{
    if (!_FBeditableView) {
        _FBeditableView = [[UITextView alloc] init];
        _FBeditableView.delegate = self;
        _FBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:21];
        _FBeditableView.textColor = [UIColor blackColor];
        _FBeditableView.layer.cornerRadius = 16.0f;
        _FBeditableView.layer.masksToBounds = YES;
        _FBeditableView.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _FBeditableView.layer.borderWidth = 1.5f;
        _FBeditableView.scrollEnabled = NO;
        [_FBeditableView sizeToFit];
    }
    return _FBeditableView;
}
@end
