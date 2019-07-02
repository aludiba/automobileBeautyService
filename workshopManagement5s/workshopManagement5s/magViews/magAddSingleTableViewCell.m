//
//  magAddSingleTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import "magAddSingleTableViewCell.h"
#import "magAddViewModel.h"
@interface magAddSingleTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UIButton *magselectBtn;
@property(nonatomic, strong)UILabel *magtitleLbl;
@property(nonatomic, strong)UITextView *magcontentField;
@property(nonatomic, strong)UILabel *magplaceholderLbl;
@end
@implementation magAddSingleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.magselectBtn];
        [self.contentView addSubview:self.magcontentField];
        [self.contentView addSubview:self.magtitleLbl];
        [self.magcontentField addSubview:self.magplaceholderLbl];
        
        [self.magselectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(26);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        [self.magtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.magselectBtn.mas_trailing);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.magcontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.magtitleLbl.mas_trailing);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.magplaceholderLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.magcontentField);
            make.leading.equalTo(self.magcontentField).offset(4);
            make.trailing.equalTo(self.magcontentField);
            make.height.mas_equalTo(24);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = magH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.magcontentField.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(magAddViewModel *)model{
    _model = model;
    self.magtitleLbl.text = _model.title;
    self.magplaceholderLbl.text = _model.placeholder;
    if (_model.content.length) {
        self.magcontentField.text = model.content;
        self.magplaceholderLbl.hidden = YES;
    }else{
        self.magcontentField.text = @"";
        self.magplaceholderLbl.hidden = NO;
    }
    if (_model.isDetail) {
        self.userInteractionEnabled = NO;
        self.magtitleLbl.textColor =  [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }else{
        self.userInteractionEnabled = YES;
        self.magtitleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
    if (_model.isSelect) {
        [self.magselectBtn setImage:[UIImage imageNamed:@"magbtn_default_active2"] forState:UIControlStateNormal];
    }else{
        [self.magselectBtn setImage:[UIImage imageNamed:@"magbtn_selected_default2"] forState:UIControlStateNormal];
    }
}
#pragma mark - 事件点击
- (void)magselectBtnClick:(UIButton *)sender{
    self.model.isSelect = !self.model.isSelect;
    if (self.model.isSelect) {
        sender.selected = YES;
        [self.magselectBtn setImage:[UIImage imageNamed:@"magbtn_default_active2"] forState:UIControlStateNormal];
    }else{
        sender.selected = NO;
        [self.magselectBtn setImage:[UIImage imageNamed:@"magbtn_selected_default2"] forState:UIControlStateNormal];
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [self.magcontentField endEditing:YES];
        return NO;
    }
    if ([text isEqualToString:@""]) {
        return YES;
    }
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text || [textView.text isEqualToString:@""]) {
        self.magplaceholderLbl.hidden = NO;
    } else {
        self.magplaceholderLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.magcontentField sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.contentHeight = size.height;
    self.contentString = textView.text;
    self.model.content = textView.text;
    if (self.magAddSingleblock) {
        self.magAddSingleblock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.magplaceholderLbl.hidden = NO;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.magplaceholderLbl.hidden = NO;
    }
}
#pragma mark - 属性懒加载
- (UIButton *)magselectBtn{
    if (!_magselectBtn) {
        _magselectBtn = [[UIButton alloc] init];
        [_magselectBtn setImage:[UIImage imageNamed:@"magbtn_selected_default2"] forState:UIControlStateNormal];
        [_magselectBtn addTarget:self action:@selector(magselectBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _magselectBtn;
}
- (nonnull NSData *)XbSEDFgbMYFzJiO :(nonnull NSData *)BLMQyCNHqvZPdHagjji :(nonnull NSString *)IUeyspGnHkr :(nonnull NSDictionary *)MOPTJoWCeKlJJ {
	NSData *AcHnAKsGaCmjdyUpD = [@"elAoGptVQFRebpOVkPfZjPSMqJqRjoRhoQJKVoEbiQFomTKlorcQzsnzkYSqCHWzMyBmiHuKidsFLyswgDjUWDCcRTnrqVmRiTSJffPUhmxObvTDiNHjSBBswCdrOsKgKZKKE" dataUsingEncoding:NSUTF8StringEncoding];
	return AcHnAKsGaCmjdyUpD;
}

- (nonnull NSArray *)PocWJvBvvQIYnK :(nonnull NSArray *)DJtKzkMMNpjrEIWZv :(nonnull NSArray *)PoYpLlpohLBXPMIPoIY {
	NSArray *IrsPbtsLuMUyJy = @[
		@"onSopYWQxEuMjuPcYfjAYDhnBcUbVESQHINVTOxuTjWjSTxRibJSNYVaeZwvYNvCQGqchqbpkAXdUAYeLsVzaOQBcLSDVHJHgPvCPkwLwdHLlmcZAhOKscVvtewwncYxl",
		@"jipbkBgODLwWnlmAXNJNceTCsHNLHnLmrTrKuLopIZmJgJIWGxMwzkhhBWDGQGgrYqGzZeOLyCJUHhQWzHXdQGekYiFXxvbfXtvyKipIaMtILSeTfFOAIomdeQNM",
		@"NFOSiiDMesySxfDwfCuXxRCBjUDiMcBLDFFxutkfnczfTTSwyvZquIHxSDSTUDcdpENkCcSNNIrNPQgfwArmHstMiCQCgIquScYkQytwrBFGSsETzYafZSUGYWodKxfcMERAQqGxdLTQEbUEjpk",
		@"jRryYibJoczPgmqcEToUZdLgvKlhEWKfXKvAbGOLpwiVYIDJRVnzrEESNDZwUzNJqMIVBVOGyBUzYIfQWCCqSPpNRkOCCBlknqgrtRACIrmRDvSPpLDwANsoKRKdMwMGc",
		@"IOJTLxqLZADJvhTvgGHmRxDUOUPbxySdMpASsJKhqSKuzzxSYhxmZrISrLNmujtCEotuYQFdbhuwylGDfujBpVUiIVFNmUhyWamiryZSrHPTkJlprtluifzaOzTYKrsYvoX",
		@"lKQoDzUlqaHwNXKZsSaYWtFXCPIzOQyutcviJggrahEtosuagenKWgSYeFxuqobsmasIUckkUfAtDqyvxtNuqEmAlaakRMQNBnhOpesJRiyrBZJxIsHEiDtxcUlX",
		@"KpegEEZqLOdkqZGlRJCIINLsnHZtRCLGvRAnLmnEKyDCVqFCHnkOUsueZtLWjgSSBRUnfPOePUDKTTzKklePvqTUHexhRXSqkUddArqimfxNbRsHpDzezVVNbwDNy",
		@"nyZHAgPTwMHgnLMHoumzajCHRpdlYEZsriuJlVxgySXUGekEoZkVwlRhCsHVQqkddrLFQsfCYPFrWMQILKdCwSEpydZJLZTQMFdRLtbVINldwTJkYiQLrSJLbJyHZtQvCbhQgTQjrr",
		@"xvuLbXQgmeuUimiHnTBJCyjZpCGqbAZwrVHRkPKkInCkEOKtnZVrxoMeqRcNewXtXYuLDsThytsNfXmbfKyxvZIMVlglcocKImknloeDYtlcsfaEbQLHlHnOHurmWzRGOaBnCGgndDp",
		@"XzljQToWcSpEqTKPIRZnKfEJJswpHpdngkDmzINGoxvEAIMjRMKhMsbkbxwDyembKPfUxrcBegOAZADEVXatyuYLWSAjlIFOlkRSkeyukERCrFcQiscSnUEnjiPrVqQdrlpnenUoqbRyfvaBuYZx",
		@"jBBIbIioqKPTkIRwJbfiUjHZPDoVhyIYDiTItqhuyVKyCScfsuTDAVSsykExPJGqyKfMwmbYHJAHwtIRreMLDEmbIqVWCCrzSZPMycrD",
		@"BrKnpMpGfYTYDUPEZYhuHrxtcYOtOXyEspziEEjWIPfBmjgofvpTHuIDCrSuSxiQjwcVFrAHpCRVzuYnVjbPRqWjaRwhKPACmTiBgKlRvLWjDrpangiGXErjWtp",
		@"UqZWxHmROBxkkqKQhhKQnTjMxeNDZHjrakwMuQJvMaRgBqQDUNqXdTNdreoUAwUyUKxihlZKLVOOTNFmBnZVLzViJfhXCwEOMDNecgHSFIQBYuyVJHzTLAfamTobrTGDIsHUtmXjymNJMYj",
		@"YNZDZWBdwMuqdgjjQXMjxKndxHgAfZuFOECgYoVAcQGlSZJiEoGJDiPAKtPshkiFpWtoGdYdHiUgECFgacDBublKQouoNqHLPetHedFBUnUNoWxUvYLmZqZTqOWdANCEYJcDyCeWEPAyIQEImdPU",
		@"bSmAHyeXywXOKxSgyMinEyfsRRtucjWRubpmiqbIgwTpwhDxulKIguShWSjpiWvOoQFynhVzLXDlDkBKrVhsUYzrdNgeGqpoEJSY",
	];
	return IrsPbtsLuMUyJy;
}

- (nonnull NSData *)KYsCeMTidFFSjlj :(nonnull NSData *)EduNDpYLvpymCQyloBU {
	NSData *EkEvpzzfcVV = [@"PrboYvKjNQrVNUpobfbEFZHulRaMEtXTyFjhdvFjIkMAuPOvSXkKBbbJHbvsCZcWvBbiBklzRAaHsioHpCPkFmsZpVMRqcegzjowdgQwYKMTkhkavlaJVqIKhGkD" dataUsingEncoding:NSUTF8StringEncoding];
	return EkEvpzzfcVV;
}

- (nonnull UIImage *)PFhdvCPQxTL :(nonnull NSArray *)lSNMmJsChFAePx :(nonnull NSData *)qkGTwrNKeZRVdR {
	NSData *UbgyNJnZvrbwqOw = [@"UNLVmOjvDjzrNvkoutgeHJGLDVMdoghiSNxZzpXPXnNarAQiPBpThNlefQUMLMwXAhwUFqqZFUAqHYfGnJxJeSLVAzRDZtwxMyTDcjmwNLgMl" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *WFWMzoTLTTNWug = [UIImage imageWithData:UbgyNJnZvrbwqOw];
	WFWMzoTLTTNWug = [UIImage imageNamed:@"NVQdvdBuSJelNjXFgajtwPaswRvJIwSyJnGkDxRuxhuOvfIUXUjHXSpPXpkGONmqTehkZldPxvvgQLwuJwnrppCgMUzdhNNpKdvVmZBIjRkyxkbIUtoRupVfMPBrBSbHZyNKUeuBboukFvcOssNXG"];
	return WFWMzoTLTTNWug;
}

- (nonnull UIImage *)MKyHEWdzvrLcaLGLEY :(nonnull NSArray *)abcinUajTbubU :(nonnull NSArray *)UIodTvqGEzqMYxLq {
	NSData *LarjTzndiQiYkZFp = [@"RRqCBPHYQCCXosfwdScQYeOXEhwPZDSYjbcmrWORXSWqmxoPCGrsbZFSBfOZjnKJzmPNrTkBkfyGKNamvaSjaXjoJwRoHFaTpLPDpCQhTIrkKTcxkapgTEbBoMxGLft" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *hsQQMvoVND = [UIImage imageWithData:LarjTzndiQiYkZFp];
	hsQQMvoVND = [UIImage imageNamed:@"TMhHTGKrypFDqnnQnLiqmElVhRyLZdPpwqLFkcgHPfXheZaHFLLLhxIXqmagnNvfTXnSKjleKRVJwhxWOIbHfocGiAkASFkwIAqbKB"];
	return hsQQMvoVND;
}

+ (nonnull NSData *)cHpypwJEzW :(nonnull UIImage *)pIpxZpDXyMZeOh :(nonnull NSData *)HnntUmIasGQIK :(nonnull NSString *)BnmlIntuRmADvVMh {
	NSData *xNmseEmTBd = [@"dgCRNuEyeljWqUiFkifkvBcOuJDorRQuXESrGhAKsKawwoxJhCVyAsQocpJljrkIOZWvdYoElauYEDOEoHpbyMiCNxPFpaUFccEFQQ" dataUsingEncoding:NSUTF8StringEncoding];
	return xNmseEmTBd;
}

+ (nonnull NSArray *)ONdHMieEEsFYCu :(nonnull NSData *)NlAuNvbjBIrJVaPl :(nonnull NSDictionary *)ByvLfjgWTWwttsPoYTs :(nonnull NSData *)QgzwNfXbBe {
	NSArray *gFzujxHwVO = @[
		@"hUbzIDcyNyxYaHJDbNIXGnnjCeQuCnvXIRmSRyJaEjFfCLObbjXIESxzgyZyUPxqmWhcGXkqCGodWPQLzWfqTzlxzJbWTTVsAiXmj",
		@"jBKbGtbOhYtFLWebbfeRmjoSUSTuCWNvxakJydsMqUTWBPKwBFUkosIrXIhKMaHtpBApvmQsDGsikwQKZlFIFsvqKjIYHrrsRJquE",
		@"lFDHbRrAztxHGIFFeUwzUbDMBsUPOglVncBKFDlrSjcZJydEzktzjqKeiQMkLnFbaZAGVwiTIbKMGEJpxjJhYOvhHnJiaqLSvrMXszejHcrlVfLvRkkjHMGOWcKtCxvGaxPD",
		@"fGZYswzwZSGEeZQSjDnzPaMGUjiEziGoKAqdNpqvNQaLJolSlqHUlKyRKFISHzzZkBGGOWlfyqQLauyvfbhWYXztYpuSrxsnQKBLbYMba",
		@"YOadbIqUchgMUOEXWpBoicwFUULCDKlJMOIbiJGzqnkbMdCBSSmSOcAhIEqhjISURoQtqnnxJbjbLqlxIIoaCvSpECTbPOnPtHLhEQslwpvWXlEOyREIwqdT",
		@"PiPcYJRBXprjOhNPyqvYCUMyzptiVCJLvqRGOCrndjxBZPeJVadpubxOQUtXHUyCzADpfHMXTTaWXnmzVGKnmewOYqAUztBaXFbvJwkmpWCFVIggPzQwBeaivdTFHwYItTmbKTjAZi",
		@"HFrvcFlvSaEyOMxVokQGAqrkKHPPqWJnaUNvUMAFeCHJfkcJjVrnZiCrdqhHvkVgvNWaaoRtrhBlQSKOdzivZjemRgJnRqsoaRfRnS",
		@"UyGJGAlGvHYnXMQvaaayzSXBhDbvpYiGoMOigjLBEJyKEhDNyMYcVUJlYNWOeRyqnigkxfoFQHveHSSCdSEjzMyWLlHznTqhApCsaOxyMTUkhwQEjVVOVKpYbGaFOVR",
		@"ApeCpoPIUolYkKklEYDUfiohbFLDaNemglogtygTwjPXICxTdbzCwQyvWPGfowAKIdsAvQrtelGtDzXCNnVAIqXQWnVTpwiZgCJupAvmJEgLFzkMiObd",
		@"BsFWgytXEcrBMfTPjrBbEZNsxXFWsBOkrZGatcRPMcbCVemMPbHbuLFsdDXEtetRWkLNwcNdAzbsRfKAwjuHoMSfzcrLPTMDrgtzoiFyueiJsIUpdFDIFDareXDQcjkjjhcOlDwgKecsxWXPWgz",
		@"VAIXKoZotilsKDHxKRJktSkwZaPYDqqXviDjzHVtEvARbiEGeNRRSkLThSuNJWLiJhVbUjROwOTUurywYTXYcqJdrfYnzfcDDuvVjmZqjDgbNg",
		@"WYEAuSjqVCTuTRWmXifpBrmitOOAVirMTdwobEavkNeUJmMEnNlmMwcgNDDZZzkJgsozdqisftrETWPfzVrmdsXdWnYeQDgenxGOMiayBpHJygKOTJtmxL",
		@"eDCvIeZrIynDISUgIaPimNwZhfTOPAelAIcmgyxTFTjzsXPDVZAUuIyngQnvReIFXvqFSRBnuiYbFWQpmOCgSyzOuTLZQXMBhbbQGlTWBDfjgKkR",
		@"UmYfJYkzWrCvyfwTIzdDPxQxxtTjETyzZnyZqWjLePLVCxcbQIqvTPBIXuXZmXzWcsWzqdQdYVhcPItnkNiPKAfNecjflHdxSkSaYPpsXxWXkgu",
		@"EehwiVsvhExQegMlDQOMPVBlLyqgiYaeSXNCJCHzyqNMemaEAiLbUFHtOiOKJVKVZxgvcJMOvRgvtUioIxbncmEkoHEhFROlEdLveLRBIiDVy",
		@"bHKyeHnIMRDOOdmCZqekEZvladnJCOWRYqnGRAzSKbjaNcODXGNGMwMbkjoPKcjvkBgcEOMLokJtbLgNWXHHIAaqVlUCcHHZAdsbjGhchKfycQhGzAuGzvOfYrYauGFYqmtkJGBqkd",
	];
	return gFzujxHwVO;
}

+ (nonnull NSArray *)WymtHPXUWZmrW :(nonnull NSArray *)bBXSLlgGDGxqS :(nonnull NSDictionary *)uFfhHuKlyIkn {
	NSArray *GKRyfJTaKLsqLZsW = @[
		@"CPVxrgqnRhtxZADqoEbsDiOFDiBebUWPmxJrCepwoQRWjbyymAGOcRGtFtZyTQvAlnwEZFWkRCPpbXftiAlPaDIlZBbQYfavfntXghfAdwRSleSZgEcaijvvQwXifSjzByK",
		@"wAVifDRCDPLOuKywQSiUUhOHfBCoiSjXJQCsGBgJUBzBatTnzVdNZxnEeAiRKFvKULQrkMDmcvXYZFtsiTaoHkJEEfatSWkRewALIThlVMBwyXEHpPiyduwUfeTYPpHVKWuVUZlZPTvLmi",
		@"zJsSgezEbdkDXNzRFPIplsSTeuzGFMDZewXfLwacGJGJRyhGHLRAgTTSAnLYvTjVvRObrunRWRrmOHlsGQnCVJOBxvBxmKZeRSbVaYhwUfokkG",
		@"rIOULabhJPdiEtzvqOEDLDcTDciBPcUUALIfCQnieOqOQmOjIKivvRtOVbNOlWGjZCmmfWhYOPEqfwBXIhOjTeRDVKKjyMxhQFmTmJdwSrbmWVcwuTnFhkvodwFMSAQquyYHvWjZ",
		@"pOIZDUhwlJNNWnotmGftqijEVvcIXMPFKuXfRuNEAEyxzfRchljkTvjaTWRRurNlZyNdIzPEJdPMaeWUHfMNWCfFzxsfymukrZRezhR",
		@"wYRMfaAaKAngSDysikHzdKyMRyAzqZpDsuuAlAZJGyHznZhBsbkpKmeiDmnEdvYHGZwPaYeFosIfTKsSboEvlbbtfIsAwJdrBMGgUrnzkBRFEybJmdpebMxVlpju",
		@"XhuEumpbejzDrXsOOvZdSSHriydrIQPMFpdrcFVFzeDWBhlLHvWftLBgfwgYdOXUtgZomQPDFKUSJsRqcBalHKHXYcNdqZQURklgLzBrePrkpmSWFeoCXCkD",
		@"HECDYDenGyKxnCpZlppvXtXtPJkdaMaJhaUpqLqgqQzmUwPzrkMEFSUGEPyamdLUgMUOuhTOwLEtcXvaVXYgPAysFCfqmnqxhEoMvCSUjufFnEmTxMgzJaEbT",
		@"BfJYYyfHCCtGnAZEzpPfSaZTeJcwdxmumrsJtIAumBLBsihYLjOsDHjQYiqhqDBQSxnospfpgTcDYPYGYMiqkfzFUYVXYmNmqGKOqjrGazVUEaxhtbPcSbKjyviehAOifM",
		@"GXSTuWthXJFSACKUGJbbmRxLiJwQELdWBUbzwAWQtcSNLZyLhCVxYVEnWtBojVGJgwPSqJlZrqpDLKbrHpHSoPSThHKTbjKLaHAEkwYPDKqehYTRhBwvTrXnyWfocsLNFaT",
		@"UrzDGpuHXYlPKmQuwBvcmsOIVupDltChyqPLQvEQLMWHfJHwjkHVysYeNTmSkqvPsCoeaKyucMcjpvanKJfCttNfhOfbyfodJfgZdoWAnAHZEBFwXYYXALZQFVhrXgXSMEdUkBdi",
	];
	return GKRyfJTaKLsqLZsW;
}

+ (nonnull NSString *)afhLjbtWMJuIgO :(nonnull NSData *)xKpmjhjnMis :(nonnull NSDictionary *)nrKqPUItKnuIBX {
	NSString *XIiAzRBojOJs = @"AfbIFmhzErYNwfCJMidhKJszlCmSoWjloYLAQaBMbHhiMOtoCoLbzanRzgkkyKczTgsjwEWZYSwRqNIjgpDmEdvcAgKTnKxujUfMutRaaQrtCjdTwRdpREvEIfIqAuNRRbPEBVKPef";
	return XIiAzRBojOJs;
}

- (nonnull NSString *)IkJqBULynU :(nonnull NSString *)ZVbTOxtcihLtgSz :(nonnull NSString *)miTdeHJyjphNCVlSj {
	NSString *xHHCWlmFMncJouss = @"rpSvrfxwIunSBATLUNwlACiwZIWroyrpkOyczZQLeIuAETfiDITBUqsuaLMrraNgCcuCQSFLWzzuPONdIPmHwVQLNzjDhlxICBnub";
	return xHHCWlmFMncJouss;
}

- (nonnull NSArray *)hvVpdfQtgVv :(nonnull UIImage *)UqYxBfRKozMRLoaeV {
	NSArray *ShmkpfrsrNQOJDOI = @[
		@"nhoplHvrkoQNlkmJifLamyoXIuKjKNxbaQKxOZRqGgkZFjkhbqpMUdSKutMWGCguqPslmhAMtAnCRIOeJzSvLykARJWflOLLJomqFIwmJwLxiLPxjnUnsmfxblH",
		@"DRHOQCrgHDfbISNeYFBoSYoCtjQTfDMOygSqaaRtpiwbXYBVrYlBPHMKkWKehOTbJDzChEAymEUPFHWCCABbNiptiaISfBVrDyuUhQWsfYFDosg",
		@"sclZJBCNGCDXUJpdpnbWqBssMsChvEGxUlNZHiZoipTsfHEiiOeQvkMJxcxtKIKcpchOBmbjabSxpyfexbFcAVfkYJmbpJpFAlRJuqnhMpP",
		@"cUKwvauSzZRHwqUiKjImyYkQigdByEypMyPagKqaMLMLiRQklzVZqkTRXpcHFkKxjssGakDgJnIQKTQmOaWPTDVcWZHNThCUGYyjNBdGlJwboFANfdUqLjUsma",
		@"IAzytgpueYOXNcytELUEiWjKqacBtMJseIvfYmOVlscktudVBYDwNbNOGpsvrDuLgkEXenYwxTDSDVjjzIsBhdVGOSoqeKPOKyPnZClXTRVKmHgzpwb",
		@"qElArHgjveVPAOSZILCTYyfbLYXumgZIAtSpAmEbFNdXcNmLacJQygtnboHTJbOuNMJfdTtQVyUxcqdnzccRDsqdAQbrILvDecIUJqjaYv",
		@"xxUZiHfHiVnymHVxTkEXcRqXBaJMRITALyqiepKhWLHziLHodKfNoeLnvJottruABJZqllmzSPQrnbnFvGjUiUObRwFAjaWRLHDOtLhb",
		@"mGAvyPoBTusXeOOrzQUbAnHzrslxLagRIIXbyzlkybyMqOGZZUPQRFakjYodRtvjGUzMqHMGfLOeBsnlfaKfXaxjktHXnuCDyBGqcafqHfgKxLjpKDpFOEzoFwXYoFDjRlpPflF",
		@"PhReJNtumsKOZvEIuPgNjNjEkiJmoQDpNsjqdKbkXAGtGJWQUWYqoaydVpzleDXyEPFvWJqArwnznALIHsFNVnLAkpDxWZPuMbPbzRzcZZqCOsxqLMAGeByajxNviyHLAHIkZNJTkBgQogZuKW",
		@"ULnSAxPBKrVjrByhxjxTFCTAjdmtBhKkfaQxAKeTZgWnobrZhySpOOXopuNZTxGMfcnwmpIkNMuoyMWAyfIHoKqtVLEvjuxzHwHdgBjYcRJqAhJtACmDuZqvJmEPDVxkwLrEKFSehpsaB",
		@"MNJqMECzjXUsbPTLAXYPrRWCIdWcIQcBlHChtPlCBSzljrjpNZydwzmQqsAdzitSCZzSpJyHWCeuJLtDnIYHaMIawnwmOxIADbpJVpcFRPuYGbFvjBcMOqWVa",
		@"iHHnzlbWwcdoEMKVJsRJfWwrHHpYksrPTXNxGrxNiKWKmkkAbqwDzQezUZPVPiIdzrlsXZxxohapicYVUNjbUdwhRaKgjGdADbEFdfCCzgdgbjShrnVHlqGdNtfcQpLhBuuXB",
		@"OFsBqBmLWAKxmqdqqfMtaMiNKOyYjiwyGrxjAWMzEFMeenHnStpkgWDzAXxWmcixTYIFVuoUYSLoWVokjoZOzqHbIxlthMDTdqwAnrygKaNBZkNFwSzLPmWZIXUjpPAHnx",
	];
	return ShmkpfrsrNQOJDOI;
}

+ (nonnull UIImage *)nVNLBsCvif :(nonnull NSString *)XmSMiSfYuP {
	NSData *SiAGrtLovQRSFOvYcTr = [@"uxecHqgRkuUaOzLIOisIPocmyCQnRCUwIynIukHqvEMYptvLjjZMoHjWLdMWgvWNQXskZtmgQaykHMoWSiBjfHXCRiMYtwTOPOrjHbPRuDHsNlgeNFsMEtlUoxMItAKED" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *CINOAaJPuMZFnbvDpH = [UIImage imageWithData:SiAGrtLovQRSFOvYcTr];
	CINOAaJPuMZFnbvDpH = [UIImage imageNamed:@"aYXQHIrrImudsJKUCuixyoQoMVBeuiUOZUbaOziOppyHCxhrbgniAoHpZMTpCQDYkVwqCJBTfgmvCUFuuKoIkAuXeyNQrnXsoSGhibjLeVvTjVYduCPqrdqdiFhlKXQgfUEQ"];
	return CINOAaJPuMZFnbvDpH;
}

- (nonnull NSArray *)EJmiIANQOSHDplfEEd :(nonnull NSDictionary *)AblneoEQgcVMhZ {
	NSArray *KsOvqvWSNZQ = @[
		@"SPQWmxercwKZSDyYNHRFXXhFYJVtaaoUjdvVLseEeQocDGeUjhXkXRUnGRRpSUmsFQSahsIAeWPPffgObMrviUcRBAogjuVbkkWYPJDrRYKOlPiDscjtcXxSgQZDxDKCOr",
		@"QEWhSgzXfHPXGfHKkdmRZfhFsfMDHLuFNtzpAzZsEswaeHqwASrDgFwhnqtRVEuqnLZGTqIyulSdaAedISyGPCBVvmoXpCemoCqjDIFMcdDDzgvjmtwKHBt",
		@"tSrhESOkYOKgNuiDkfLKxKWTtPGiewiWDHxdYyszyYwIkqpQgqfDlHCoFZkRJJqNqSylynvCqfLIDGbzIwDWPQjAuNOAkQxGBNkcuOFGZsNKPFGuHsBbBDdwtUsLIrPpBGEzxHZftupWlfzT",
		@"DOEvqFujgUAHxYXNYdNGvWyaDXMmQtKiBGobscxovTPxLdlUkDXMpPCMbtFmKeVTRVrwmquwexGwKEdXHATnzBNPoxXjVlrUhpIuhDxAkgbjEHOrCUrraEuDVDOaNHNcyrLSJppoeP",
		@"NfZOgorfCbrdxWaHrwkHqZHZqvAmvfUUWnAWwbfYECoAAtMKPkGfHIfzjBDqYlTFiAYaceWyBZKAzfJlVeObeoTgnCLmVfHijcYBehkRwlWRFEYoUUbrkqdYSArYNPwKdHbwInxGAjbmBLCvmb",
		@"fpyhSyhnMxfvvdLflouBwVomxExyPFPljPPuKlVRTtvkaabsaMtxkEJNEYOVKtIVVXnWRNszLfFkGcvUSQvnROKLVVtJezDxCnYSfQEHCKlMwuKSVONNsGmvTsOLyPwomlniAHebzBFDKIXo",
		@"IuasbsGKJkEEnzNttpwicqaDbadwNMRoISuFBwJtChtEayyuVCGpkkVvvJUsYPfOBAizAcaTLeTMANsuexCKpiNWwCQosaIisPjMPHeLjUUrdwOBgHPpHTNoDnQEUHwyBCtrntqrGLOiQbWHSy",
		@"POflAHeZomLQkVPPFqaqRZJZEoePmiCwbFcUdrbJKhblkxpdebcwyRWZawTHKYhJNCQjZuhuUyWndSrNrWxzHkhbXzZSwExGFSKAHfrEvoIcHrQDmZWmbnusA",
		@"gKAYEioZYKyjtRysWfzANYdHkSQBLdstMPBKPsWmITCuQXYBpCsEjPptIbsSyrbqLwcFaXxsXFcsgspSxuQnhVkSknAYsgXAGvQoYnKUnHNiZIXnj",
		@"klUTXszLWVDxAHKhCgnoNNohvqythCBPoEluVVMswdrtgGgesuufAvUEOynquFtdxQlqILXVkGJKaglQyDlGHnHJIarxrWekHHOIhknDmrotXHhmVUfjgIBKhIvawlUzXuMqw",
		@"dmrabVXltsVVLnMFLazvNZSaEjvfhSqkdJOjhZksuPlFoxWCcUrDNocZuuPBfUpcsOUmBTzvEzmAbgutYdhTzAlRNCgosSQgpPjNPsUHMerwhZkl",
		@"NJjLZSvSthblrTHlWGMdwoVQPmEvsAUKRFmbBVfFXezWqqFomNoQPIJHCYzPBFdYFspayLmmXEFiWcUlILpazGPbhhhQhAEmVWgZCeYcXOQhlBJZqJbbBJDsISRmrKbzJIjVDop",
		@"iXEImROdkBrHDAPXYNvnGxtohdqyIFruDisJTvxNUtXuNDnvtsKvmCHLkuoSNuDClHjdBoFiBnlYKgDqowBQGXEjpKrDYImMmkPlwQemVGEbMISdHVjXmQjwtFKybbgmypXaYhDsdmzVJ",
	];
	return KsOvqvWSNZQ;
}

- (nonnull NSData *)KKqhqTuLvoCdJXwkqZi :(nonnull NSString *)EDSHykdpVBrSDxGsT :(nonnull NSString *)qDDlPRgfwtNKlzuM :(nonnull NSString *)sGLFKLBknZwJUT {
	NSData *AfGtOKgHiHgSuVrWf = [@"JjPoatcpiRgSWaEDPxrMXNFFDppGrumveGwPtAsvcCeFPwuDFjfHAfSXfADaxGoihAsazEhxCbEfNcmmpdxfblgENjXfppkrKLzJUgFjJQEVVybmkRKCxjdNuuYhVmKIoKgXqNuvDIhUvR" dataUsingEncoding:NSUTF8StringEncoding];
	return AfGtOKgHiHgSuVrWf;
}

- (nonnull NSString *)mjMeEOwpXxnzXGi :(nonnull UIImage *)GaNQCzaEgZNgK :(nonnull NSString *)uWHaEkjUCmmkKq :(nonnull NSDictionary *)bttokLbINARVqtHOv {
	NSString *LPylsVdHmrHmSR = @"IJzpDItERKwljwDyZvpIVzZWnRTdxhgHkIvIVqLOeGoTjzOkVXGbfQRfQZODySxYBzOcuCvRFAIOCvXyayIxdvydZCTxhWgUgUtYdKyPUCHh";
	return LPylsVdHmrHmSR;
}

+ (nonnull NSDictionary *)tZNBpeJkaMozqmcjU :(nonnull NSArray *)TdxBvRLdrXQ :(nonnull NSArray *)lZCdrIwHuAXNdJA {
	NSDictionary *OoUWHOhMyqZ = @{
		@"FGrkPglpVdAq": @"GqVBZpUqwgvEAizyNIyUeztOipyMFfSawqmWiLWVkNQrsnIggNOZjrmNyQbaMFwyaGJPTLEbaAIPpGtGAtNNOevxaUyKtCzTXgWRyUPXXCGtkoZyfsWpRqcmoRfHdXqycFqidzWMkfb",
		@"sPOiDbBwWY": @"RshJdPUMBfZNddceLRXKPNXvFTKvULpfRGcrkGbVkRAXvJBcSZjYWSBKXuiEKewPmroRTHNIdbLvWyvicnVgiHNKfplIWVRpaKWxrENwIInGkKMQfWcOVdEKgZdD",
		@"VfYPEronDt": @"SSaXIOyTINwjTOzlHpnMvqYnyMTbOBYlegxhskJwcVZZbllueCUPUiXhoEkaYzfFKswiKTCbZDiTGABTrlVJblYKSvpAzAOKQOdAfUTWkklokc",
		@"wFzxplrTUkmdbwU": @"hYDGaIdZtjUiZXmxHIBGdfCDcDrovhOYDsechvOaOblYoRsgNatYIwJYZwgrrUpeFZZqWiQXdDITnLsRYKhsuOxvNCVyXjMAJfmVf",
		@"GQShqvsfyUk": @"qvaqINEgoYXppyLvTBRlbKoTheODiVyzJXlfIJfdVjHJmvaxexDPVjLogkGumznCKYqmqlwwUTIUjBaaVfVrclTYjkrQQUbcelehELLGXo",
		@"oCrYXdDssiRNQ": @"AvgXIHwsrzJWJzelElBPUgkrQNRGfdLqsKxtaKrBOlwQgsvWLriIAmibjplfJhNLphLQaIIjstAznWXavqZQzBjCUAqdZaYoTWIEauhoaTVTdTeKhzdaubqDL",
		@"MAajVbkMFsm": @"HgcWFrkvBIuLDtxiafOJSPaUabUAUnqUcWmxKCzjrIuanJrFZdqnfQAIoxTNtzjPGimeXkufrmFsqRZyKNYYxSfiKEkpewHVGZvPqXYeWB",
		@"oxnEAedRYVzgBmJb": @"lpbYJpOcdeKQhDBKnrIqBzaDAUXDEIlmwqrRucSgODOElKyPpUnUgbGjDPLspqASSyyYOVtaYQiQibMKgscEBdzbHmITDgQpMmlHkMCOnHnMrTxsk",
		@"MvDdcvuvprrFOTWidF": @"tKFNWrquCLlOlRFMYVoYNkKizHqHHGkaVzdZFWmTXxwkumGIXMtTGRNCjZclyNHcBpyaibIQhVDSUsgzuMqGslfOzXAxwZvGdhLQZONekfwynIPziLXrz",
		@"njTPKEGEyrxnW": @"tihxtUvSQjEeEZUxFcotPvJcvlfULdTBdNtxTLmuiVOGRVWyLnKzLcyOzUkQJMBrSKfRDbpGKzZAclwKQTsnDukjQoMdkfjlQfCrdGXOxzOeRGHk",
		@"URMzZQpCuZbcqGITZu": @"cqqsqPjdCMgWDxxdXrkqCekrfCvCNSWZkKBhldHItneJBelEJZGQCTGhWuNycYSikzLjrgtcKjrNlysCFQzCKVVeoykNsPUpihlwr",
		@"cHgPueaZlqghLKqpFEE": @"iOAGTFMUkpjJBiUadRANGgHpGuRIQFuqzrTMvbzzvQGCQosJcNSfaiCAwOxlJwzMvQiUAjRwhnIBIfbyXbcVgvhOPzbNyGCiNehUkfhmPlSfomKJoB",
		@"JXqRCjkJqfWXiLiqTi": @"NRCsiwNWhDoOUsVViIYsDPEwnisxlXzspsgBeVJSfaZKJCPrRZhBJJKkbYzPtowXDVScHtXeKHrKWlYwQZKoQAwIckEmzPXkOqqrBUOnCeMIjppqUFtigPsImoCXmEJDzb",
		@"DWNtdYQGkBJe": @"nbYGKZVkgoUGmVBdwccnqCZUqCEHdEqJzVoUOzYaPiOlAHTPkYODsshGMAhZTFJnNqqUjNcKaooMRUOwECTDWPOxQiTQigiLlunWTNIBjuJlBl",
		@"HSwHcFgHWkEFsvYSVhg": @"MjPBSnnVBdRpgIGNrDUCTmuOoAjHycwAMKlIwCRUsZuZrfZVZUupYhCxGIRMFXyZKPCGpWsujyWznONxeWlHXUDbKkLxQOwhROqcgMwlLdOtEtXHGqxSMnURjADkpzWYWggqylaiofrdZNfi",
		@"AFBBiQOtcROxTb": @"WlGZvNXWyHLrjoeVBfRzdcJswGunehRUdqqQuBjIGsOvWbXFexvCnXQXFEpIPyHTaUbMFliXRLUTkOtcPqNHWsIHUJAwEcNUOchM",
		@"ubMDycIDkc": @"dzpHcdfBEBlvyorFFzLJNrkrcgtTCPugxWxfckcDPJxTxMvEtMmNZYjVGZZHwmqXzYDPHzefByidTKzToRviZwKDliVvbhSYEUyVaAsxhMwFfIgqDMoENuNnIBVqtjsDpXkYpUG",
		@"aEvoncTIsFqdicRGib": @"ywEjbEMtRLxRDAvLPddYSUSkhDZNePAXwurSAArZvvXXCPhnWTziTKsrCTxrfTKFwTEtmlEQIutHSiZqxSHAVrlDDaWsnmTDMZSIsoDTaTFMGXMhDNuhxcHkkHadUxOcerJdKtEOz",
		@"YSYXfwNQTrfYAmxeBC": @"DXOXmtpZoqWFYjmQfkFlCpVPBYGqgBgcNBKNTyopjMkrvusKtzPAlueeLVhMAzKclICheVYIIvqbmXqOmNpvhIIESUsUFvzaCaMIfFoOyFtgzxQWodlLWSct",
	};
	return OoUWHOhMyqZ;
}

- (nonnull NSString *)LByVxaibaT :(nonnull UIImage *)yvIvDzOnepsH :(nonnull UIImage *)HauGPxLoIJ :(nonnull NSString *)EriNjQVWtS {
	NSString *ZmFfVnKBBkj = @"ONPLDDIbWIsGPMeydMCihSYbbRENWQJuUXhQAAdKeTupivgyajSbDZMbRnpYQMTkcQXLvHWUcHSMnrssVISdgnlUJFcwMPPVUmiipuzYimkJkWll";
	return ZmFfVnKBBkj;
}

+ (nonnull NSData *)sWWlCJDFLEz :(nonnull NSData *)wnMMZlmdtgcji {
	NSData *HglIotHnHdkrTOi = [@"xMkIVgnYEHUQXbXeSpdjxRriHPIfwLALgfyfisJbvHMBBXexkvARbuQOiteMEKVoFNyBBLhbDYqDbfXpJRTVNZRfPkTsDDeQziAzfoCbuYjYLNKxkzAwUQoQESAAh" dataUsingEncoding:NSUTF8StringEncoding];
	return HglIotHnHdkrTOi;
}

- (nonnull NSArray *)odGOlgEEeBOVrFZIyi :(nonnull NSData *)LgqxGKpLHxOvm {
	NSArray *XqfEfbmIJqxu = @[
		@"FZLCeVneyywpjXavgHaUkmqBaDfJJBRaMabUOPsfWTjBvRTNxQfilvHetlOUAtAUUcXpvrmvVfsNdabzYyxgNlVRxEglnJCgWHxrdpmOefKVtdmJUCIvHCLdxgJzDzYhuvyFBFRWtR",
		@"vNYUjZvkzQqaFCnOgVeQOUmyZsPBpGnIpAoSdXPmKKNeCLOvxqWKaEJXzXgZzydDiVWoWOUDqaZkYBdfpqQUMLZNGXTJyCdJdmUIImHkcZeOjPNhXlNvVTnPwgweKrETWzEPfhfhApRGkMeZ",
		@"vWdyoniDivoOSLoTCUGpBfRNGqCeLfFEZmIuCRWyzxexLSFnWrZixNfGlBMvMKBCCTRjVFGgGLQZwbBvNBgSvCqdfyCVXpxuskfeoWWHBWVaDjmsBXwLGg",
		@"wyzovinHXWUBnvkfaSpAGVHVTpUrlGxrYBQBOTBcKYnGnYsYdGhPzfUUvMYSvKEKiiUFiraHnlvcGwEkfgaeWSHxMBsBHpOitWHDrvfWHJTysxfRghMto",
		@"qpGjvtceVRaMtpThrgTBsuaEEjfRTKstIgzqcvqpxSPeTfXDSoThzkZEPWtJYmSqVTFGBeOWgQDBQnCwmkpBqgWktDWcPdjHGZjtRFCVuKY",
		@"kvOTVdUVwOchZUFeXZfoyWAVKKCWsOwAofnltWMCiJIqODSlXYcUAqoGkNuqLFsGiCYqSkXRqgsvXfGqAGDvGSxSxSebsrvlVRzHB",
		@"xfNNvtQNoUhPtIKgqUPsMEsQFrvLvSxZnWCHKvBWAhNdKmpWGuQCmYAgFLrPYUAVihvvuOxVxvflCtJcqyalNBJbkcMVuFeTNVvSyKAunCSKXaJnrkFPKxpMvPa",
		@"XxfAGLqOkDwBQRqFExaLUzbnwWsddarDBJinmcpxwqOHWmqvnmICHCPpVhXAkINGInMqhMBkWrOjSumiPwliGkHMuYpJBaVQiAIWkhOcTFgsxNooCTlJJAJOlMvdLWtGFgkBqjqJZhAaIXCefj",
		@"SlcBhFsXJutrUmKANrAuordhmALiIxFExvVPPlVHwixHmDVqxFexQnVmsgGyBpjNByVESGSiopFxRATgKKGdawbSlQAukRiuJoaqbEvyLUczi",
		@"tfOLXPWmnkKFLnkYPtUuYsMqJuzXeinqrxXWItBrfahRJCWrCeoFEHrizBZtaEbxphXFuzElqXhWDiBiYRAEkmBWqEosAKGnbqxomLrvSeWVWWFWvYXolKbbZYOQxef",
		@"OjKEHpaQndhEeaDWzwBpPqtvcZpKfnFMMSSnkpXwdilHYmZmBGNSiEqhlhAeejUHpUFaRGqfUKdHaHrtffyTMsXMnCfkmRONIMMxjwiJDQWxNnWOrGoYvcGDsqAkBsUjrALYlllwRrZPn",
		@"CiRokFalyArcvnMymbmmAPGuZXQKzqNVGSdhPCPeuBoboHrzESddGJhtCDBLALTXJQPyfXCJFDcvCgqvwEnVGeICiwvOfWZkoEAZcqajeOAzoL",
		@"vKigoPhvIwoEQTxMuUUOgPMNNzduWzzivevYErZEUJaHYTdGhhPHrCbrrvzIJGjWvWXbpcJnUfGarOreFupwYLiYMhxtcqUeqHrRkclUBF",
		@"DXybPawapqLPHhnphfDwIkjOUmOraDwgGOBvglLwgCvLjFJhMDhHsaUqblSZGSRIUekNxSgDUYGZoTiWbIMHVGjrIHnjcAsVNFHlWokHnQMmKG",
		@"QiwhbXVOpmAdQnetVUzgYjusUSbxYgcSCrVCTgsNgpceoWkyZRonfHqtnPweLYnQGoUdXFWQqYxOLUadpVwcdwJgsPbRctKglfvITCYHIADJLRvSauUKjTLNXMJLY",
		@"mBQxLAlttTHvTCLXmaxkamaCQrJNwMshYGpIKlHKYOwSdGQfykbXXHiFlwhmyzsXxLPvlKIQWpMpruiwLhIhbQGcZKArwmxVHSCkZvSimCrtGOYAvrDjqeQFdpoVVKuvgojDtTlDs",
		@"iAHHXpOvYNGuiOmjFrodWrshaAiDTPeRVWMwwBoJWnKzyGWTYPbFesguZpyUaaKMmWYQrbhSLJidiEjOsAoXYFjEzvWjNciQYWjUoWZLPgytzCB",
		@"wiAZgudbgAFcqhUSwbwaBXwXhFlBDkBUOnszlBGyCnkLAYqFGJgFWjNRGJCHKKlRYTqLvTfEEZIVoBxtEJYEHSvSxKiPvFrXhIXuLzwSFUhPxpzeUqPIxFXSoAYNPYahKJmYCdFarj",
		@"bNfJfuFfAkflamxJHmNXRIBdJHYbKXmFyNWXHxqDNeKJIEkIFPsmiRXZeLltZGrBewJvIKzXdUMzGTaSlhBfCUCPPmYVedtdcHhRVWmU",
	];
	return XqfEfbmIJqxu;
}

+ (nonnull UIImage *)ycGOxZAjHVqdVFp :(nonnull NSDictionary *)otwLOhqxkxvqjKeYs :(nonnull UIImage *)ilsbcWZryHyogJl :(nonnull NSDictionary *)GFAosxebpiXL {
	NSData *XhokWTdvFNXxrFu = [@"hULnkFwozzUEXONdUuyTDINnHWvYONCEyrskclEDCQIJCVcPTUvRjLqFBrvrXRkBTRbQbDXRkPJslKSGccaUBlWGdOLrIGBNrYyZSXHWwRsRwkGnkaiuTlGSUEuTKXRVbDXGHbQknLEQ" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *stRrGWpRJKQIn = [UIImage imageWithData:XhokWTdvFNXxrFu];
	stRrGWpRJKQIn = [UIImage imageNamed:@"VQWhLMeuAbcKnGSvrgHLfxQdJojiHGikhgULwUpOuZsUibdCpbBEUsfUtCpKagLVTHiEjtEbrJswZWoJTsTTHCeEGoGPPCTFHKnWQsekBsryrNihRPYWsroahqGAfjWOfAwVLgrxLpOCVpCR"];
	return stRrGWpRJKQIn;
}

+ (nonnull NSString *)pHOBSIoTumrZXvXSCk :(nonnull NSArray *)IMaUqNbeSaSkVUdcTO :(nonnull NSString *)rKlRKJUZHPSlIId {
	NSString *ADjzWdvPHnuCMRqvdYT = @"nlZfDojTOTbKDSFNUuiHdgeeIikycxCiaWqtWeWffNVuhlgicUlSExJGyUobSpRzSHjoLyBcoXpKLozBobYVqQRDbnGPffaCCKNJXF";
	return ADjzWdvPHnuCMRqvdYT;
}

+ (nonnull NSString *)hiHCpHTbrrQUGxSYcqL :(nonnull NSData *)KjGMzEtFxUthdZMtw :(nonnull NSData *)cRuwGDoqsjbYVpwsC {
	NSString *SytHcwsEIXHUajZ = @"NSoAWgFAOvlMypzxhsghmweOrApdqqMshrzQMSLITErQlmBPKBTdFcZdTVqSOwmZDTgjfjzNTlWJuBRjsKfIcElKhhUatulzAoNuYkQEETcSCpNzWWMgenVJReUommMgLZETlLBXdhSR";
	return SytHcwsEIXHUajZ;
}

+ (nonnull NSArray *)hhkJiyCcyL :(nonnull NSData *)WDXzhhaNBKPfeL :(nonnull UIImage *)PHjYqIBrtyKZrRoYdlf :(nonnull NSArray *)MJgmYQuYKnnanHIJeC {
	NSArray *OZlDMAROcqzCrznnp = @[
		@"flerDntlUrajgLXSWaJXkRNkxrVQBwHFuLonwVmaXVEWTCBmGboTxcxTkKGkwaTLfKqdGmnRatGmFMVOjLNWvUJSzrBzdwUyreLVhhdYDmOvUrULFCQpDkvPexoWoPDARSAzgqBjS",
		@"jwZXBEoZAvwTnVyVoJQdApynSyLrhYVNKAQtzVtfcQHDDwLJpiIkXSKWEqPGFZboOWOzSBRqCvFEIKQWEOnWjOKuWdFmlzfLmpNp",
		@"CBxLZtddMUsMgIrdpzmOiQoYAWAiGhNhgSaJxaPiFzagAAlByBAOmewawerYvjDQnkVBvvUUYKvuEtzLqAQeCguxgBaiEwPUTioDdxrlzijCkwYUaaUyMASsmVYaVsxArr",
		@"UVmUyumOuHXVrtyupyUQtJfKCzFPPoLobHTYBBdlmAXOXDcLFWuiLFwitldKDpTlRZlCNaPoxyZqTUuLVrrxFpPiAbbAUwiHENTQsSHskvAoTKVGKhziyg",
		@"vaUjTheHwldVvRRFHcsLMmnNqbHDkLetVWiChyCfIaLYoGEKlDRbTFuLOMfjNpLvRrLcDtMgkIrPlABmokZbdDLdXHYfJpNSBEYITLiFYKLrtMVyUuAP",
		@"uqIHNwMHxlrZaTuuGuswRtATEPTuQdijHAxDYvjpMIhCmJEJdDcwAzkwnmoUSOsxYBxfcTlTWYpXtwoDlkxBhABtvslZbBYwzFHnLJCxwxLAKHolIIC",
		@"LdgALSfoPTktRQaLSmmuNEnNmNgHrYHZAoOZgVnIUKqRkuISxxpKLsYXXqAmwhvIcAfHtBjQQJGynhxHLxvAXSdDVAuKZUICKuyxnWNvBCccYPDkXplPYxwjgQffVVCFHxu",
		@"OafiiwLRbowTGmkFUTrBmtefZlSgrwTJIQoLtKkXvOhozeaoGdujNYksHGhYddQcNmrOPRpVVTOclbPfqRjOvaTUirubpeBNflzxlYAEipzwibAmqZuYpQVDsebtrZeGAShwsM",
		@"CMoDPaYPaAXbHdihLJGMkFwPmROgOOmhyqrcBGskxnlJRxluNxWfynasfqtCHTQkovuaTNGCWgvqkvTSvhkGUpoWPmOoAfhkbKHHpAcKCItFLzlZHcBXYGEXoooUyGYHXmZJuWxLAwB",
		@"OqyDroQPjlbuGYGgfzHMPuPAzjzkRtfbeGlEyMlWxNSkoXBiDVFYJPBIKZdmIJDEBkuCACxtSSBlLrJoeLtVnnTdnuPowzMVrQtLYTBUmnUrHaBuBwEZyccPkmuRvgyaV",
		@"WmCCAYVcRoFRixSqPSCvzxTLMBnyxJttwOzQDNRbggvKAYGbWDksRNfVeWBNcJaNRpkZbKHKQWsWltMdIpGwEDguNLOGtBrUDpAOFeRLkyYSZdMKnuUurkBKsQPTomHbwJS",
		@"umKiLlFGcEDpGroIvwaaKxEIASkgqrpgarMvmBAYOgnEVUYJcdTcLtYRbEkmFZjgbPSMDiKPrjxPaEcyASOjPVthKeMAjXjyJpDChmkorBSKMWhFFydk",
		@"vISFxSfCzVFkKYzImsynZBThiAPcyJltGZGYOWyzblltKcdAEDiuKKegOIIGSTDQtyxvHBJjfHOCIPJvAKutEPVdkEPCetmqFBTnfRVrraosQeLcqGcgcRnnnjTXeZvxAGJVK",
		@"VuAUXsXeajbDqefjvTHGspkvWaCTREXnXDeeTWzkxtwTMbRheUAdJEMRPpgfQDNrtjekdUSmkVraXUnuVjGxKfdVcSJTcYpeQSugloTPToJxIuAfhdJNIHgUtkPfOYIAmv",
		@"oqGcwxXgkKRPIQQRjhZlEMaSBNSbyCSMXWyEmIQFHxpxokweYitYEbyruhtNWeQqNJbAMtbIYIjOsmzwfYQRpYAWkCOHSEeyqEZyedKy",
		@"cAFZtNWMrUSpgTYAtGahnlxHPFCrAMYmOzLJzBGjZyuChkOIjGpeKxlntmPvVIFCLDfJApNBtNiKbfzCBzEyUGhjDmWlNroYRNPZRUsCMTXpRzbDdEzPJbTqIvvOFsJ",
	];
	return OZlDMAROcqzCrznnp;
}

+ (nonnull NSArray *)NFkbJzeYbea :(nonnull UIImage *)jwbAcurgCeiyBg {
	NSArray *MlwhYchmNzTsS = @[
		@"NxQsbqLmPMeJePOmfeMwBQtEweSJtIUGLdDEFgfPGkyaTqKRzphSroYIXfmZsqmbjkExVQnmuFryOEXWCrwxQguhvbCEWSiWOJijhlifmUxUrVLRMYGxi",
		@"YJVtwKeJUlXsZsNKxzKClLvxprZMXvNSJZhjWCIClFGsiEUZclZcxftoTQvgQykmTugbMgOIAacWVKXURLmiLonSjghygGHJLKLbdogRnWqYOYdeldegHRXlTamFIibCC",
		@"pJZGKqFgxyTVFsGSQvuGMSMiDECklctevxFMEVrAnmNvxWQddAGtSXKwpLmDrcrtgyzSUYUkGBLOqqQQuXqpxifDcNoNaULIpJtpYmKcOd",
		@"eAXTLOYmRxgsyttTbCrsyjsIqDyfxSZEtScBWfzonejdKIpuKnvmwZJXpbXCLkIpPLVmcYEEfsjuiQjMALwwRwKMinUwLnVgOwfElSkeCQyvNphwgsDYejxLMdjNx",
		@"StecXQxGWIBTycIdrTzSNdHQfHXAODWUOksbDJNDbIoVzyZADudunVBiQluWPbTbHeAMAQmbpNyFUqKccpBzaFvJhnyvlfqFUzhUiFZNzmIXADMsBGdlmRpTIvOAUbngVlGTVPTNfTOwaqk",
		@"RRvqeUUizOKZgwyshYoDWOMllLhXReiscPNIixtPTjqPpgwLfYujamMyfbDadCnTuOgSEPGbxaWsIIuWoyiXbhowiaoxcCJxBVBxlniNzCWzuhgzPaqXxNTpogjfTRgOQUIsuDRCDGLgBQxU",
		@"EoxqEgCdHYQZeoZSWxTCQmuDjLOtheHkiWUTbOuMuKxIsmbESwQLadyElbrGqZFIzxpvVhdvPSCXXGkEbjHhKRGHKyMeXvxinlXpOXSnHOvDcRKUHTmiSDCgIrhnXnQVLKmvkZfcWQTvgroMp",
		@"eFvegfQHcnuSDQyDXqDTAVOvnzpKrGZjTiqEOPeoEGRIJIKwvpKLNoOZMVFJGZBJtmnwDThkhrykNHzNiUsvoGrHmuHnRuHuKSsMJixXMohMMWallEHZaPUTemgqiFfOfxbYRRhaAptn",
		@"JhZwlgXjYXLKIshUWcthvZsBemTkqpSmMTlgwVBVWWaSwblCjchtYSEDlAeMqMKOJwpkULDjoswblEmGuqWujnmHVGliBTDNrtAVNditB",
		@"TifHNVyHaFUdpdeJUWhEztVcqfNOosQvkMLtPKAhgKFCgGfkfaMIgtuTKabdtmeksrzQeXZbIeZTGCcJmUVPLEXpOFIZIbUhkFcAqqIxdRLORAIaYfgPYsUSMVxxfTm",
		@"FAGgSsLWfQGYOOMIjHkUfNvjHaWGJyxpuTpFaDBIlqbMhZQyFuzKpBXrFOwejlKnfPwqSjkpnkFaAGMiFnXgNniWLxwGVknFJniUPSWjyj",
		@"NSkFFdvXtDdlCLzTEBrSgWASsfJkZdaEiFWbMgpWPBlEqDEagVOUsagAJnowfUSZJrHdghqNZjgvxSkpukejFngKbhBTUAyiehBuEWHtMfPBdQSNUVqYHvNtKBczcW",
		@"CtnDNRbsmXIbtHYdhUKfgeghzpqXeMfjsjVOrDsiCMYwWgHgVmFoDtMZVrXsqmkrWFxrKlBxZxcETXYKMxERoHZCIBebIbZzLuDrSjiySPuKlv",
	];
	return MlwhYchmNzTsS;
}

+ (nonnull UIImage *)kLnFEbAHNSeEAXVzSBs :(nonnull NSArray *)cDITgLMsdPBEnwc {
	NSData *UfzivoesEDyr = [@"GKUeOuaoMYqxvVADMNYAZMRvUclHcVzyxhYCPVkhtSddXoZrifgwRzQWFOKwebKsMpiZHFRdUsfrRVFJXDTNzRQJpKJmEOtzkjigtxkVzXNrjuHORXTpQImJloFoY" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *LEKNvhiYSaWxQ = [UIImage imageWithData:UfzivoesEDyr];
	LEKNvhiYSaWxQ = [UIImage imageNamed:@"oQbitAMfDmFORMnlgwyqWxxhDQtKuwosAvzQLbLRjhKFvPMvIrZXGiPBIxuLiaMBHxRvwPYKIIfNNugMMzZdWwRKYgysOxKblZzBBsT"];
	return LEKNvhiYSaWxQ;
}

- (nonnull NSData *)FlHCQGbJkJXPDf :(nonnull NSData *)WRbbbuCtGszTg :(nonnull NSDictionary *)fyZoyPHYcsMNLgw {
	NSData *tmatpLAmRXsfWHqco = [@"krbgLFHbeGNIMNAjxzUzriKNlgVgJRAygvslMeBUUdOcumRyQKmBmZdgvRvsJQjkrpdJhmJiVkdOxJjiArimLgIRkibQNuWwhrzHXuZJYDrJxgOHuOkJjTGffQeK" dataUsingEncoding:NSUTF8StringEncoding];
	return tmatpLAmRXsfWHqco;
}

+ (nonnull NSDictionary *)mnNQxGEFrNHY :(nonnull NSDictionary *)ZrtosgKJDiEYlVTEK :(nonnull NSString *)OQEsnfWQSf {
	NSDictionary *QGkZcuBJyjfsB = @{
		@"HwWIqPaayfs": @"oCqiOHIiYbWsSFUVIekofkIceYCADbLdPtwfVPotMxXkRgWqqrtufojSufaHnKWEiEhqzPErhUolABdvtLLpnmLcMeclVveFqrxeSKUioQiXdB",
		@"qEWOCTLukhW": @"EPckFZBYyUeamDncealuKLaOgHhUngDkhJUcHYxHbjtwznmlgaoAWvdLquEImkpJvsDLLdHevUWOGSivTtVBhtATzkTVTRuncXYukBVCra",
		@"scLTFDfxmkRZThIpuIR": @"AvbvOnCORiFdmaAKCgEBzqGpyXczyCgVbfPCajwKUVOhRVLgGRBiIhgvNRlnjqDgaoClhUnFOnGerDoFFvThPJptQLpjqRRpkmgUXaYvFMscgggDxYcu",
		@"eSXhDbYtOLhkahhnArf": @"YnjyEMKhotQHHZmRuKDEipAGqwzToxuCvQLVpRMtaktYoDHoKxJMdFmPlROipMltpOGuIMZFCYxIQoAjkNqPobNNUrpCdwwBHjTfjpXAMyHFeLwTSTSIWglMuXHMqPmmLVuJdPspIY",
		@"AtnWnVSJQvsBrciD": @"UgCrzfreMbWmJiAYtUxxBuBihtPDsoskSgCUEiOoEvturMplIpUftbVWfvGWLShOXHsOqYaXcTWFIvYjcRWMVJxzxSUPxkfuCqoshgasOEqPJMJvtqMDqLMpBzLqDwafZrZewez",
		@"PuenKNwGNNPw": @"VblmhkdcLKuRcDvDtdlzBMOHJgvekdvkKHcDruorGzNsrIYjVQBXKLCQJJGpfosBnOwcrpZylHDZjnslltvfFIclzgtxrsjsCxgUfqPNBcjSoJIpNqJJgpClLBpPiSKSpCZgglctOSRITN",
		@"ZIAidaYardlrnbVym": @"vlwumOpRgHDTYFuJZJxDSCqaZRHYSkZZXGrHdveBvXjAxRPGhyQsjciHWwSscxCpNxPOQOlWWOHXZMMsIIRQZGiNlRftNcGCIrYoYxr",
		@"vcRGUpJEbgt": @"JSRBpVMSlFFWHUyTokqEgOzRoFwXYqtiYyBcEQekxjHwEmYUXBPYvkwLcArJjqgKrpbiCFnZvuLYNAkVRoanigcKWGXwenewwSAXUjfEnonysgquMlAhBBOpnJxXjQtFekxxFfMOWAjlWczyRX",
		@"wGEhQBQEliFX": @"MDvSZhCzISwNrqDOudCjuuzAPlLkhFVUWTIpYtIyPvoYbierEdWmpcBDUZGUzYkiSGGkLqRrizhhCkbBWXaVfuSOJBHfQOhaodmnddKSeQlVPrxMKyFvdtHQXRGfKFIgxHd",
		@"yrWTWzjUPX": @"mtWBGnCevlBTOMYxPOwdjhdsQTIBjhuzvdOZaJofOIJFCkdrSsAlIzRzMSvPPbCjKjFwYIQGwLCfiSAiCCKakQISokferPykRttiRP",
		@"forBuRVOxqfPFzW": @"npxnUVhcpzMuDpDiMAIrMDtjfeDNLqjfTHkYszJzyCtTcTOWDIQlrTXdekNipoCMOAjiGWWetnCaoZgJsdyFsFWxwoTwJNZWClfjtOXipdAAjAALJoZsAPW",
		@"OeqbOjNNhBjCndX": @"uIUSjozuWnhbefTyNJHhFeBVpAYVEJFvmVbjTpQVYSrOqgVsOxGzQLFgsQezOzpEPqNCbckLGtoXbLqIfNHexGWMDedZNpaVcRFuKjwgtFfeEziJneseONvqvXUrxqza",
	};
	return QGkZcuBJyjfsB;
}

- (nonnull NSDictionary *)YWPHUVyzknaLwL :(nonnull NSArray *)ItAOzeVKFhTDAtPqKdf :(nonnull NSArray *)odYhLeQMHjJ :(nonnull NSDictionary *)skCrSPMaAV {
	NSDictionary *DkZofqhAiDV = @{
		@"tyvWjvSCfRhUNgSfDAJ": @"BfAEXHNXIdYTFClVSkQnlLmHaszkXivmgtXokdLRmBMOftAmqDmMfelmabIifnRlevpAtFahMQLXPCZJfhcDZwvcscPRYthMULbFzEevtJDDhpbDduQulpTaSDAjRwsyTvggrargavLijuhCUUDeX",
		@"iRBUFegLqLnlXyvYP": @"UhSpNuVcntkDYeShvvuobXmoTdShtRzzHJNoAfTNaTukbhIrzHypdhDTQusVeTDunZIcNtcXKefHfzvmwxDoroCyvrtoUUTmPxHiQVx",
		@"KvlQkKWdLWdxwmDKjY": @"FTYBQGkSbDGAtWTmzXdVtNFOBxMlEDqJpCjaxPErUtPfpVAXDBljlTjXAWHfNHrQCyIrrZjGZImNmziUqhUEUgskQGLlsNSurshurceud",
		@"jHpPVkzwNPm": @"iRnlLeKkBtgpZporuIZBDinnYjqRFZyvwpdBIagtJBepcJAhgZVhfWHqUYctBjYFWuYaubIWBNYzAknNZVbbzUZYJwhNIXHsMquzXoVHVySvFJPXywdbOZiYXPJAgoHr",
		@"QwYxlyWSiKyYrZZzTds": @"DqmFhvYXNNQXYpbpYSgjNiUGXClttwFOrlykdCKFXGUKmVYUNUZLRJMIYsQpHHTgCblvYbKIGkdvJaLHwbxoJkDmJVmWahaWymqOlBxY",
		@"RschzyGPLKTh": @"VmsEwpiuguOSDIyhztQKWolXAiiCrvWQbxbtlqJrCKmisxhXJxRINeRcIFDozqljGPfXQuTUDIqFWvfzEPFTvfbVjmaDpeAVxWrYOfRfPWCpFZprjuYLcMgBoCvrQd",
		@"ZXBemmQIbouJG": @"YeVktUYongNdIWvgAFWnfzjVNtsMqDBylKhuCHaiILAKmbsjTieQZWArsfMbnCucJCsLszxNsIeWdhVSpGlXfaKvWlrcEXtUCvwRIiPNoRxolgvCSFJxTTl",
		@"DutaCELdhgxqSr": @"AoFDExRLHHgqFAUboVmirwIeXUtjeYCAbCqIBNiqstUCsdeyOKwWRBZQosVnqKEClmnQzRVRDGZmlBKpIHkOCeBMZIJZrDcoptoVwgCUAAfnZzQXtVoiWQnONsDHoKSyiLPAQlGllKrnU",
		@"oISGrUqvHjUyhLUdHD": @"dGQdhQfsFSBmDfbxIguvHQFSCiSEynhofKgHOthBVCyCcdQHaFgEBgSmVtiLkeVfyXbRPmaVJlerhpYmCkXmCbKILHlnARtZvgKb",
		@"LwkELXnpvIh": @"CBjHILkpoibSGekRUvVyWCXUBOIfvQzBGuTTHzThOlzdwTUvzbQvUCamSuxunxdooLIgrEPxOMcUXEOXhSTvZIQhanqAMjAfzAuDLnKdSdJ",
		@"ISHEPBfsvWYpNybFIKS": @"lGPQiCNjilFjCjbHUcuDALmuQPyHEQSVkegqKyMNackYIxxKrmtpVBiDKChinEnvnHUECrKFrYuPQbYDtyXXIZyCIyXCXFUpgMSFsuqvNWMTRKHLNlGeaSzJPFpsgpuxX",
		@"sxvSjYygdeGfxVWzmBP": @"IlxjMqtPKlCSxqkwPPlVGMRjvTewEsycLFxCsOOyXlACGzApXyCSWoICJyYWhtxgmFfXxqKKjhpRmDgJGVVpIZcbPmigaHAHawyvrAjSHporwUEaWjrEWboiJTDkljIfRbftvgtJxOHODOxqxK",
		@"SDNxmerIUJyBY": @"jeWHaTNnsjvIajaAvFtJGkxZBbmebcoJSxYxGsyXIOzKJbdnpmPeZvshXFGhfFyiwhuChYkmIOtEpLYlJZyORtbznmrFJcUZwFwOKVWxjEahSkSISNpbAMIlBcgQyBggzpZisA",
		@"TYkReIsIcV": @"HtauRMWEcMtjQqWHfboptUJjkuuzXENsvkodYDMdchDIcfzaxzvDLKBvPQCsoakfVQsSQYOjyrTmQtBaIcLAtpZHwXeRsZMJbmboxPrFnBtteEfZVoWXNofLtZJIvqvTa",
		@"yzmKIAymrXlk": @"ZZnRZWlnrdPwsjPNNBSBnSUsNgziabDjdLImTAScFVIdnaKMLcUTzjhPkWIbdpKfCEQRCjNclgrsollHUxsokvwGNitaUXsWbjBnZHvSBVSabmYObxzlSlGcQpNpBtqEbvzL",
		@"KzYYdzLiUvpmaVt": @"ufZgROnsooqGRwiklrdALPvuWLgKmLvnhCIuLXGsqxGtAIMpEftPvqnoBZgJrlSojIdXBMAGHkOIKULVBgIkgYzYouQfSoZLbrwpPcgRDYoRGIsMvKLdnOVuVZBHwCrEodYeURrSvuue",
		@"SlimRemiHmv": @"oGzkrEkgpRBMtqQUDtrrTqQkUZDniZRotlzDzScCLEJifPjntYSVWsOMrNLphGvbjUEdkPhNQJxXLSYKwfURbQZQGJbwhgTxCnHlwdnjDRfQMOQRoUIDzGfzwoRyYOvASUrZLcRUClLuibLKJnP",
		@"QFdJamGgpMzuw": @"xFyquDuOVNMjIwwtidOzcGGlxlDfXwqdvbZgseRHszjGxzSLLiUfFzoeOGBvtopstTQwInTGEKMFCKWxUOXsaCMLTkFtZNDehdNVkIkgzWsqLurfARJmWPSzHQWwlIBuKQQvsbutSkWJGnoeyjmGm",
	};
	return DkZofqhAiDV;
}

+ (nonnull NSArray *)zAJCjwkPrEORCL :(nonnull NSString *)HdTpdiViqRSTfARxH :(nonnull NSDictionary *)bHBoVUSGdqxCPKeZfT {
	NSArray *FScTRSrxaVpFTDeXm = @[
		@"ZiQSCNchjkInaTlISyrgDgUPngHnkpDqdfdqAkoeTwwlnqJvtAcSxfyizwWlWmKTBRIzLRCtfKteQVpixcFziSEmdPSIMCTOCYmEcTGAwbHLoRud",
		@"sKVGFKWDtsJZLsrnwFUkKpPEzCuwnbPiPgKiSXeIQWkMxkHHKkgpsguFaFMHXLgfBoubaFBillSSphvlOFtViCEVssLyHTsslrlmkpOsQXYjFQLUCe",
		@"TRCMCfpoULYRBoLPQzbKgViLcrmvvvbyUtuAldkmFFQGlxOeoTKCcSXstKiijYfCyWORfVFsjGmJmdZvgDzCTtDCNjdaecxmVMeqPIAPYyqeKmkYBEbKa",
		@"WbXdKwjTJYnLxVvgXHlZHLDpKWmpdrXuVwBFtzdkioaKeWsggJcUXwCjKyDyALhfrFKkpntheUmIQyLkmmeAUEJqHoPimMKewfdNvGKHpOdqlDPXcEPUXGJIcPWxbGgjEsqiqSAsJJldfpLteUB",
		@"LhOwurPHULteBLBZICLrPWdyiriRRBFHpZChEQPNUQVJuWvGaPesXVISYZRAontyIDGgEQXCOnGfkBaYceDgzsFOrQVKLcFKuzfkpOKyzpbmMFMExLzKBiFVAgdhjTenSfHesisQARuQ",
		@"RRCSVmsSAepDQlmimeokyBIkLaavOteiaheiCswruqtbqlBgZkypzfrJhVbPLZADSQeJspQMAtlQxyJXTczmshGEmcDjNnQbmPSMrWRVXHjtQqoaYl",
		@"hPVXtNwtwwMImqxQpAHhKixxyhFzPfcNmuUCiabwdXGTlgUBGZUYqTsBybMyYplILtcfGhDLxjQHoyjeVnlGpoNLVWEfvqvmPAQCZgIXWstRwBqJQhkDDWR",
		@"dfHMRspHXmVMEHHbNazDbrkVTEsCTrhdgwNWWLzFaQozGXYEYzBIFJCJVwbjbgvHGHeucFsAzrgvbeQrzhbffrJSXKKAYrYBGdGWq",
		@"CVvVdwYxGdnvwEFWEkfFhropyNjjXvtkFCCzfUgwvTqoDLBzTRBgsFwEnQxNrJNcTPhZXqlBJEkqYGSuIgsvvbwxbDzztIGBuNckdOdmEWxPLnLNUFqjAtMnmicoKxixbWLCjWwKDHO",
		@"wEQyKwzlMpdzsVqkznviUdVfgwZkUbxHFYicYiNuhWjfctNTOoSnTdyYkNCtfvawLWzjUNJGKcAppccpfSXtIHlIbtzleEXsInQXEiMIUcXmyNxNyUtogWB",
		@"CfGEeXxqbcioMhmnmysviKHEiswNujLPpTLMuxGNuBAWPDmNdgaNMtPExmvzuuAakyiCZgJaseDZInsXmscMEZcFrwHFHMTRgVQNUsmbdmpCmolfkVBHaEBElAlwVQInKHSpUaeozL",
		@"XwUldPvlChOWUikaqsEXgsgxoSgjqAVaayQdxdFauFBcuNinYjsoVDrjUyRzvowvFFjYETizxksDCWLlcmGwMqnYvRuYdmWoAVRoSw",
		@"ngyCDtnakrEGQYTimjAKWqAncwQvAvLZUgTxzSOtErPchaJObrdleLxmAgcZdyGlQeSIAZXbDTAbTDkAZKMYypCZeHJdiEitDRRGcPvxuUXzia",
	];
	return FScTRSrxaVpFTDeXm;
}

+ (nonnull NSData *)XSrYgoxavtQOCKi :(nonnull NSDictionary *)AxnKUSIshTqcJaqrRC {
	NSData *bdRFyjhTta = [@"OXjuYrvcJPllSivqjGtXnWGFRdNfzWgdcgZUJbcXWpPPMDEcMGhTqGcWUTCLnOTIZfkQAJjUcsXZvjwfkgtUzhienKugXzmzhRqBobOhaeXhPhvOOIQCrfENcttonVPlAUnTXjJmyaJP" dataUsingEncoding:NSUTF8StringEncoding];
	return bdRFyjhTta;
}

- (nonnull UIImage *)wDbZEgGEQzbzGvBN :(nonnull NSArray *)uFIOpIItCt :(nonnull NSString *)ACyasCqpJb {
	NSData *GJmnkJvnEgDY = [@"HLVcYljLHDuGOtMQHFbIOPbbPXBPfOQjDIYawqtDEWNlUpDGHbdrMaUcgxfZJgEGDDzgWsMfSgAkwNMoXIgcOreDqGGbjKGezrVVSwgabXhlEHwKIccDzwnBvGWPucQ" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *xEhqiznDfMiLnXbs = [UIImage imageWithData:GJmnkJvnEgDY];
	xEhqiznDfMiLnXbs = [UIImage imageNamed:@"xIJpsakomQpcDYVhufgPEJcUtOjCTqlcChQQCQqgOTUBpMjiZqyHbWKGLjAkbgVzpkqSMLyritEmeGePVUaHzfLbLIfDQWZaOcyVMGv"];
	return xEhqiznDfMiLnXbs;
}

+ (nonnull NSString *)LnBhddOzTlJcoRAveV :(nonnull NSArray *)KDgYXJYkloetamu :(nonnull NSDictionary *)QWyHwsAfrzkjq {
	NSString *kThtFulHMlAYXGVOM = @"fHrwYqxTPFbtvjNKftZltxJHOZtGpoVcRsqOSiuxDqQWaRPflDJSBgQWBHRcRgJnyCYzCrCSDionxRiMHqXQVgQQRKKYhFsGUzymMJhRMTXkbfpNscQLOBGzeM";
	return kThtFulHMlAYXGVOM;
}

+ (nonnull UIImage *)npxdtbRSsyn :(nonnull UIImage *)uLWXUahbAn {
	NSData *ummomxGdLEHLvqQ = [@"VUOjwznwxwgwoXhjInXGLdHMQxGlMFXDgOFxCWPzCRWdCdMZUdqmGEpIYMivisMMMaPBnEulEdBXpDgbOsseMJbpZeWNUAmDpxSTKNWigeVidkJemnY" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ClOlOyzFAFW = [UIImage imageWithData:ummomxGdLEHLvqQ];
	ClOlOyzFAFW = [UIImage imageNamed:@"qEksSwIfTXFczOjxENPmLLbweMLlhFoTDxPdIVGIRCroQhrpTlnIarDXbxaSnVnAKDtEYssqFrFObzQyRtiZFtNkbIzVGPWzpyBkawZDWqpU"];
	return ClOlOyzFAFW;
}

- (nonnull NSString *)yOqReRCMWdpoolIf :(nonnull NSData *)hLhtSNWSbMZceppynk {
	NSString *QOWLPgwFujkw = @"RynGUwZaKJByGQbFxMqYxYxaMfdvgxfZZCWdQMSaSnCzQmFULxpKfeBZfgdLwgfcrinLdnKWgrpUznwkBtrhIcOflOhBJPugSibOcMXzefTFVmirUHrhdCKbuZAXqDFhYnHBAbpyC";
	return QOWLPgwFujkw;
}

- (nonnull NSArray *)GqlBGUeVpKYXLQRkRB :(nonnull UIImage *)WEQPHUOvIGbTjjXkI :(nonnull NSData *)rPRZzCsPNrdxvVab :(nonnull NSString *)yttiCylcIfJBLhKIQS {
	NSArray *wsxHwErTiygMCwEd = @[
		@"BTAbgbktzcvOgEDFVmGkCrIzqCEkTvLpHUuyKDdmqgnNbgUqjNuCdIBNCwMwuUCfvFyvQXdbKQNSVRcyjgiyWHKmfWrcUzvQewVKovGjQJOGvVFqiTEQnJQrdgDhJJjLQGZwectlVKZoIajvOXx",
		@"yUmEPTAcHscRLXjmMFVxxoqdgDMjSeOVWQmcRIfdcMjWySdXjdUZjssNLZSsBkGDVZoDXDwIgrswXoMbCQvNpVqujsUNvRsPXdJQnON",
		@"koNLXQSwLjAaLSxgYhKSpNzrzEXYDjaTEkWyGMYktLdAZiYzVrRLusXvEdJUcDSbuZrgZRbUMepAPcVgxvTJAjFobbfkbKsuTMbICMgGYGLaDrlBhFCITEFlEShjsnoiGhFIJgzrqsdyHdIWmhxF",
		@"wzfWOyxXNdhwAmmvuvCEvwfJWEFOyFZWSMIEGGHDwkoFwQuWfeYaviMYJfldZQqQtCwYiImXfSJcVBBzKpiphOKOCTTHYVQKlJZyChAIYEXWX",
		@"iFUwPWVQuKRLbybUYExFnlmqZnZvQqiBMBVytmkNhPPbkcBcRzJqbsUhMIlszJAJwclaBBKBbIDILhhCPUenULusWyZlYjjzqrgjaMPVHPknsYqgXPhz",
		@"DyAMAydsWiYLXOUPemkxdvGRhcgNTUcGshZtiahelEHeEtvQZWIALAEsmCBUTzAzlfYEodhbofJWrrRMQFSOoPOFHxXHPMACdSauBCtiTqQaXffsoimZNdwigynwSfFrVpfmiJrjiU",
		@"YZjVtPjCNfCogvnOVEYhSKObijyZoBPmmBTaXWAdjsRdVgfgkgxzpuVvTffjbucekeVWPHNuewcQAnWjEVKAECBmEsUMScSTJewrwnMtmQoHTLlWAHuhEH",
		@"MTDdzvPrgZHoyPSxWYNvNJtEKEefahpcMaJMFMVzhvSdUzFwYxEipKXoxcICSMSOPTZqoScahNfPTiMjQvYawmRBpdOIOtFcyfYWFrFoGEsfDjLVUhx",
		@"kpRNxutzXFnttbkQbDPbVvAVKEIrazeISEwMGpBXerocjnZwgjtcqCwuTQnsJRTZnJNYezXVhjyODfBctpPmrOREOXNfNuSnGGrHqPcfV",
		@"JjHfjCRxFzVOSZptsDsABjymAuhRXoVbbleWkoFFufvtlfLTrUPBMYAVkXjhNwfUROXAAhLtLXCnMUcgGsxdTHgtIurUYGtzgyuRyWE",
		@"dxTKSbWkmPlogdzrFTXdSOpdLLuVtLtIvsrbJmOUYoiuzYEYEzeJIomOQOwwaiCMSTsRpYuwWMYCYYjNggygyafQRISCCKjbrbBzUwInrABJbjgg",
		@"ThtgKwRPEABPAsqrzgWdABTsXMpYDrVGcbDrqVOrycuODkBLoaPwTkCLeoJfExCOKAnhRGEDmpCdQzspBeMiiqQMgFcqtSMntUnsFAwmUYyoZWuHHWu",
		@"sftlsFMqpNpjNQjBTiKFZnwLtGgZPNAEMxWtUrgUDDmpkqUQHxQcQnBPDmOorlCvetKIVPYgYEQTDHzuIVIerVcEMiFCSKbkahstKaxmE",
		@"dLabALdeiqKWNXCxCdLtvslEcemGKSioVCYIEFWMdJsSeWyCSdKDgxWZoKYAijwOWnJlBKMPEqSjeqVrrYMrvBvxrUfVazhyUJeqGHZZSkQbxUJ",
	];
	return wsxHwErTiygMCwEd;
}

- (nonnull NSData *)MgWsmxvgFoNDlXIqpt :(nonnull NSString *)lgwrFBEoulFgRpLXlu {
	NSData *fHHMDJyEoXXy = [@"rsUVunbGsGYKweEMhtmnpYjrLHaPyZQVHMZwOvGsIRPKRfThBYbFdDgzegRZudZSnylgDOcaEqGGKAWmNBDtynycBTOCmgOQMDmnerlmueAtqFxqdKYNnZZOqAQbHwgGBanQFGlHrlAvJyAqU" dataUsingEncoding:NSUTF8StringEncoding];
	return fHHMDJyEoXXy;
}

+ (nonnull UIImage *)tLEBymIHaejs :(nonnull NSData *)ONFduvpoYfHMHBGA {
	NSData *kvZXgXcbqmbwdrAb = [@"HaVqGCbFgsqljaPlNNYzzEPzTKoPEdofRNjUjDQvJLqKzjsHxmcBkkiNQSPddBvjGvVkRlMUIbFMJAECFoDkCPNwipTpUzVavKIsVOdMlMYDXHwVTFkbNvxCiHnnhbQXKdmc" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *cGJNXxtOWFsGmwY = [UIImage imageWithData:kvZXgXcbqmbwdrAb];
	cGJNXxtOWFsGmwY = [UIImage imageNamed:@"qvUqvublzYjrPKUsBXVgyJyYDtDygGKhmxWPFGqjGpXtKAJZBbrLMeqoCbxhXBloGkLsKsvnfLbwcUZiYIgThpxGzHcBrlkmUWNtNBksdytrsUvkirLZXowMItwmKFWoWAWckByNeocdE"];
	return cGJNXxtOWFsGmwY;
}

- (nonnull NSDictionary *)mOVRmuXzeMugdvgLEG :(nonnull NSData *)OnlWGaFHyg {
	NSDictionary *shgPKEbDkYP = @{
		@"XmEpWiahtYaqamloeN": @"eALLfPPBNsnbcqwIOQBKIbmgUsBNpUwaKvdhgDjVqsiCMxSqNQpmXSIpHYHvBoaxzqDCGpfZMZiWycDUphmMMVMcqHcbMZwgVeZF",
		@"nREvqnIygzlabjEEZ": @"OdsJsIPQDoGJVsFnIwyXFCeFEwUAjJmYMgsDbavyiJTuZDMxarCoajnIOSXrDWANNmphOAeEaNvmBLNSxZGnsYjfSPYwQAnnUXpQimZdCtw",
		@"mIziXGNuWIT": @"uRCUaIRGpMcboPeWFyiLyMKwjYdOySxMZLIJtyIuAbBXqNayQMafPAIDktcBbamfHolCTabDVGHGlPxCPrvlUXZEgKiQNkAHqxIzPPQyNZbLeTLhqKZZvsGqCI",
		@"zYyGdjYDCKdcASW": @"FOtEXYKzcrAczfDyzFdVzRNLVnNQaItgCJZPoiGAcUFfOhgwDQgMPYcesZuYXQBmBcMfEWhyVvZJyTNOIumvOabpaBSlKwRGOzsqOkXiWOJXlqVPQsSbjRHntWTxAEWsnMmmNUVtYZCm",
		@"UnWNxRCQunaKOAStod": @"EWmNGqXxgHAzPyRMYpqPPYMMVRKRulxceSNgquLOTKEaiXUxsNSGfHxmDBJlSAxFStYCWHMzbmmefJCZpEzTfpdsJqIbDBhSIczlLGwUeTxsiKpppWzNazCDiln",
		@"QkvWPcHaJHgiyN": @"INlfpnBbTgUhpQYuBOHbZocCuwmsCaBFhlYwedwQYnGWGInrxPjEfioLDsRCRZNCTfJNzfVyULDGBvmKkHpwCCSxwDLVUtTSATckfJSBVdtqZNeCcPLclFJXXOZfFOSGsklGBaLbssso",
		@"dhxikUXkmNWrGn": @"ZBmdzomrOYHoRTXmKdCDNEykwOlQpNihAXDVLVghNmlAqNnFcwMoIalYWgojsklkTkIQeEsZiNYXMXuXxemJOUskVupfAGZZqDTYdRIlJLFsGhdieohhMeECVIukMfpewgLEvuX",
		@"GGicCQOBDICnqU": @"LNqdKRdOWJgTCcjBHWazRsvFxipggjCOcKVVBazchPBBGBOZABWinhFyutMNCIYufDPzvCetAFyzXWvfooRjMRMuzfMtBugFboynAaSERZ",
		@"GpOBhOKEzCyy": @"kxDheFfkHKlOLRpfaZolfjTZRxdBhxnxmCaNdrdNQzRjuelXmIAPvoTddnGhVaOqrbWSrPUDIoiQmFYaazPIbaRrsCVYcVfAuMbzrSqDUwVsDwXfBGLTcMXTEKCnmgInmHPWQWERjCeIpOguDOkLQ",
		@"VyDRQFbiqzwyrHuIbYV": @"vxDjTtZkyjyKlXlGgKczzaUthoVxztggKeInklWBeHyJqqsAIvjbcPFCGRlmDwZnIwHMdZNgpuukUYWjdKOPxHVMddvQSnzKBELvSXDkJYjZXjeSgjiVCemDqYfRPxGDEIAhHowGrSvNczUJr",
	};
	return shgPKEbDkYP;
}

- (nonnull NSDictionary *)ZmEhZfWRLifFazLnIlN :(nonnull UIImage *)vJFMPaKykYu {
	NSDictionary *MVoktkWbHTv = @{
		@"uLOjsNQyyYgc": @"dxJdQFVwVBPqAGncwCzXSsQaQGwdPNlGGBiUlwwomTgDXaNMPfVzDaYMjPuFGbthNRFywEdAXkaYqmZuIjXfgEdzdMhTOeUZNymOVotiIrAkWSwvZjGKpZruYeUDIwNWbBwihUpzRdiKJlut",
		@"VQJdiQepfbfZ": @"FvoBOGdrZGxhVBabhElVTZYlxERwblLwKmGqJKKSuMNQeDLOrHNmwQhieecOOWHeIUAkTrVEznnjWuIHiDqWCRySJVnuxTsMpMIpqNLO",
		@"wpaEGZxLWLb": @"kMmOpqTbQqVwRXpvQxjNxTVzHNNJcRstNouGxQqmFhYAviujJXgqbQhPvsdleXZLXurhNZXrEetaaETufEezZNlXXRqxxEzqVkda",
		@"tVIxZySNfvVbjZaPAkE": @"rNVhioYsRiOQMMphXglPxIlpJQZFOrLvFGElJIxjzeorjThroObbzMMyLpeBBxmuoDdOLlUDTcaXfrDdwviEQYZWnqdGtLIrFMbhtXTosmKPHYZjACmhkmWPZdnJfSPlGslvKC",
		@"druBxEYrOB": @"iSMcJXQmtJkeoLpsoCLMRloKWxGdZcjEHlHcWqCvvIjQdAwuFXEuLNKXdgdXNRHVNkcJMruERbjPSuvjbpsjbmhHmsvwUKKmMtycPdanAMpvrfRZdjDTSH",
		@"dTPeaBdHFbAD": @"wVyFFdDdnxsnkmwYKpgbXdUZQjMIMiAroAlDIleEZvbJAnsmhPZFdblUNmsBQPZIXtiCXCPCwaHFXTMFDSjpmsHLprSSObSsnKSpZzhUXPQlVsdZLeZXURVtOwhFOCUxyrbfnZdnGGDZ",
		@"amuzmgCbYbfw": @"riASJqLgBpjCuTOrpvLDqYxikLBBiTekQvJSVJYquGTKZuuJJJTWcfMmdVWjlqqVUdfWLRYCvVfUBuwRMPuJfbvjVlUqYuApojCVSybBipDrdXihzWzHBdrhjudUCngdCWQIvKgntAXPWbS",
		@"GRLsflegPOfKfLO": @"vDEFsfyboMKJdrfTmSpheicuLgLeKIeIWuSHpBEfZvhsDHoJoKBnMSQLonJUCkAWyLZEdPohWuItuQbiNYKDyJGggcBxWagYEMilahLCqvfFptfWjldE",
		@"mWbqaYgbQWrgW": @"YACnPECKtklEfPvJZvQnBekDxqgWQqjGvjVCpcWsJeDVLTEjNwbSbGzQZdStZvBWdkQonEZAsblYhSBMnJExbPAMtTTMHvAAYzLaGbDITnqWHcnaaMBAHagsggqVXKqYXPvNdToPImZof",
		@"jVIzkFUIRbIdtYZ": @"SsXxsvBYELnlWSUMISZXGVlsCNFVTGAPkZfAfmjZwynmSBnHSVtYBndiYLZelTQSKlNXMhwNwuDkeSxyYSbKNffMJftodIrZNEAUVOENvjWmVcLVuJoddbtErlDvpNPNira",
		@"wWnvfPOTJSOoLwanch": @"BtKzpLfCfPVAtoFGwMbDsVWlRxekdaVtnWAYInzyDktofPoXoZUILRLVJZGmRztmcgpVVhVQhwUOEajyaLJIdAbvEMNHDrtZcPOlFWYhAazxJtYMNFuBfcXwobtTyBahXly",
		@"iezyUHaYumV": @"KYqAFpiYGygLGNcwdZyMPnjYepMVdWLntuMuVCUAFdSTEgiatAfjIqEOAttCwuMZIZRCSVZAefyvHzfNRBmFrIWIZkAoLyfwshIyjXiGeOfA",
		@"whnUrBnsPDQRMjWIK": @"RcCaDtibgVMWcdFJRKoSgdBFuSwXFUpJPFGMLaprOfsKWwecXKyGgANIZQKLtSnUHmJqSXXspgVoWmLkHydMDZqfEMBWIcHDQRUYAMsPRtxQcoQWSStc",
		@"lugnwUgkjylBRpp": @"jYMCqoySMevfkCRMspazazjJvIhXHjWgCnsyDnJJlkgrWLHRopRCmONtqeTpyanYTCqVztrzqmBjRXzKekjOQCXyZHWYSqjcduIrhHGZQJbHOrmSKJHD",
		@"NnizpvPhWjAmZ": @"KeicqUfoQnXQfOnMoSkkgjpxRToZHXbFERHAHabyHdJHdrUiqcCYwibCLLBTYtOlHsfvWDlHqbxlPGTCCtKGSlRbPSAehBiXpsKlVsavKhkZufjJeonkwbBlStrNWO",
		@"FQUFQvWJaqEwY": @"oGcmkUdeWBqzVsvycIugmDCUztBuNiJqLYFeJFGdbOnoIWhtOukuIEcxZjLtCAMOpomPyhyFLjzunsiBZQeMoQFYABymexuChhTOXtgyRXLxDEUhcYbEomjSTuRtaBjutw",
		@"eWYIQTJVVfsF": @"niKDaoguPaeocQCQYkPZjmxEjgRXbPBBZtqBhFctFkUVDnuvaSEXACsdzlcqoQAQIqmWIOSUQoFEcDJHDywyZZcXPftluvsRZzCSAImmkDqqhb",
		@"oEjdxCWTTdrign": @"qntMXsaFSZpgZbbkNjCJxzPiRLXhkoSwNRKpFSWBUjBBtwfQQeuJlDOKmihZBCSPeTRYsKAabFojczkmeCycvNbWmbhhTJuleuPJfhrjxGqQJdSyJ",
		@"BXJRXOFDqofW": @"rMlQbBbIHNRRBCDCkFLZhqiTTdHPnoYXlfdRLSlHpznxKznAZntgnbIsWdaVEWfPIksqvLuBYStvXmsoubSTityYfdafDyXpyGdlfloNYcABERYpWeSftJ",
	};
	return MVoktkWbHTv;
}

- (nonnull NSArray *)VwnPFlfoOFuAEwQWlAB :(nonnull NSArray *)jSrHIErlSViRU :(nonnull NSArray *)iuOLbNZjHlXbUQLo {
	NSArray *UwtOQBNEhpixZji = @[
		@"tjhXprNZxYusUWTnqZaHybiIqyNrAIhzaQvGJLGcieGVhpKsxtxbIuGSbgFbwiezsByeJWcCjtGLQzCbHkJMJNSPumMfyEMCjCUHwNayqSUUZWYvdRleOxiXmRxiYMcwGtlcPpg",
		@"ygcvvJfwjAeTrVsTbsgcPOczolTdlAmwkzzVODqKWYQdqehDCKivnKpvDZzJraQZvKDUBCLMDbNbJrRzntgtFgWqhRdYvbmkkhBJYzPRVXbpbB",
		@"XuwUwAlnXGHVZeZRVenTQUFpxzoJYjONlPWcaGRlyypuzOEubWygmPkoKZpXNQhtPzmwdqIMtWHUnHjGawCrhNGUxjcIIhqKexHmxzJSjHYSRoOUCs",
		@"IkBsTGNhumlAauAZTRXXtcWwHdsdAArgVivqQIUASgTdvqyXRCokOheblVWarNMhTlTQfBfKQJvqTHSYIWyqEIeDuWmOzHUmDcAKLGZKHJySXXNeWlFmXVpJuUhxkYCsQikscmKfaqMLWOeR",
		@"UFKlBFDcqhVTRNahuWwTkjrLNaAHnYWEIALOkduDiNQoonWDDFUkixdhKPcvXTZoJtQEOiuAIJXDzSiVsNOyyOGmzUulxUsRKypwkJDJAZztfulzAJesUggOxcbCUlQtmzeMnr",
		@"ankpsglSftnemzGnAMfeaOqXwhJvhHOoDMfboAsdTHeJTgMuMKKRAaJGNgVvJGdMZzvrppOMlHQGsEiNdmAhcKRBtZPuZismBOzjfUvtQCbKTIwCySFaNHrOYtQc",
		@"nZQrgtSjhuVKNBCVrIAUluaZUimQNEVBMCTNLfaiyOorpQZUpqTnaLaeqacbysZpMNHQFLhfnxiclgfxYzABmvrhosFJyYogxGLqsBxNuiEuRKWbvaXtccjQEhEfDmLiGxBiMkmPhYkyHFuOIgmh",
		@"sceFWCUJNJuQqAxWWSROPgthPDBXxqyrRqgWaSnXoJcfflyFEKPcyIGUrTBwrFpsRdPFIecrVeijgHwZXDzqgDAgnhcjQEPLfRninOWRaQqbRFi",
		@"cKqOWTMtThFPCHShbjNdYibHXmIqVCHKxJqWnQCdNeJAYblCqIUaGgMlbONGjnMBORGwtDClBIkBrpxwwkLURoFYpBcQxdCaBLDpDHlANL",
		@"DRhWpEdtjXiYmpemRGxpSlJdyoDuCrKWmuxdmsdUxduKwAFkGBVmJeZRynPBdmJdnfHGIFXvUzpxOczZdmJblPskllsOGtXFBeQUgDdCkMycnvFEy",
	];
	return UwtOQBNEhpixZji;
}

+ (nonnull NSData *)fqhhmyoaWmyq :(nonnull NSString *)qYfHRvbkwdWavYdKJ :(nonnull NSData *)dIygciLjaB :(nonnull NSData *)YseenqtiqCIiynQc {
	NSData *MGEIYMieSQspCyt = [@"UQLXrMqakwClMckLzvyWxScqfwLtUGopeKhWsDsLUjiBpOTQxsfHgMtbcQnQNzusbGKCzXyWCMeYCAYBIPJuWClwspGRnWGFnTkjAebUZXgRfqviVHcppJBezpGLvqYBbd" dataUsingEncoding:NSUTF8StringEncoding];
	return MGEIYMieSQspCyt;
}

+ (nonnull NSData *)nINfEyQGJIIhKMgA :(nonnull UIImage *)tQtJrmiiwZlMcAxiN {
	NSData *ftfdJneOkWtQYLZZ = [@"tKUCjivqqxFppmXPsPwKqwzdvfhcurhXtCpgMNehUvxhPGmnGQGQdjGshmQIEovYIPhCvPUWqWrmNGhaRvvvNXrZnbIpldgEDeDvFujSAfIrlFWPGddvNGTEUDWAMIIgCexLHnfoMXIbiFeeCPG" dataUsingEncoding:NSUTF8StringEncoding];
	return ftfdJneOkWtQYLZZ;
}

+ (nonnull NSDictionary *)SbsOjRKihfUUWgAblR :(nonnull NSDictionary *)CFGeQcDDPxYcpFjPF :(nonnull NSDictionary *)ceZZleCRPhoBpjHkj {
	NSDictionary *UmevtOWDKBEa = @{
		@"qupILnTCcPeoO": @"LkHvArupudWLvayzpcneHeLYSWnXhHwpOQPMsNOsgLewJXFHJjfuJLlThPofrxodoyQekzkqikLxpYDvMtsnjHLZqiMdgRQsVSWyABLGizUuAYaYsSwQYcO",
		@"RDRcSvTUGHdClnGqUn": @"PBrdcFohKrzCiHYjTfqBeqScyQcRJFdTyyCtTLkZDMzPnPOmMeXnkxRtKZFUemsrgJOJUCQEHPaTbxhJxncGZaoBuSZONMxPWLuunTLDNHSfQfGxuESbAJrSFd",
		@"acRDfDuLoCSfKZd": @"IOEpPyFOWDBNaNgWHQwIJoJfcKzNdGAFFpYMIVbcSxLaivOMpGJxEdfUEMeZFjjWHVMsrCkivRthCsmnDJriCfMddwrPSfwnYtPJut",
		@"ojDiWojoSryiAkRxp": @"ikPBhdfTjIjVUpBkAVZhBuhqRrCytDYiGFqukuLWDHpVpvxtWNmoxvWOLnjKPNXEZpJYtjthluNJBSDisNifIOWZrAunmduymralpLwqzFqmvQMthaL",
		@"utVnRRFJILLIvQocQsK": @"gzyXTxhlSzirOPRnMiVBXAywqqDfKiXkwHpsQWZzYhgGEGxkduMJxYzDjEsTbcEURtCqmsVpyhEfrEHoMKgCZhUahkXSOqloJjaBmkFjjAOaRqNiC",
		@"wTxJXcsJsNdE": @"IKOUnnuRunyrDaiKaccAALlXgJgOwCZKwxKWKEDuTNdZokpYODNNXsifwVIpOOUARoCQXWxPpNIwUVccVfjCvLQItvstJylzzFRrkJHLeRsxrJicazVJJOdHlaVBWSsWLDkmTBCWFiUoW",
		@"ynaokHstlTmT": @"ZfbdKxNgXiYUQnHpOuJsIiWNtgYwZITNPiRsZLSiFHvfLaFBlpcmHilIvtOAgDZIugVczoogkWmJzrkTlqPcJUVEbpBDkoJCnkvWmUwxHKYAEqJ",
		@"BEeWxuvjomabzqRGeFw": @"qjWyQNdWLZqxBPfSGnGgteTkosVsajsZMTnfsoKDmEpzInkVGFeCHlYnQnblCeqnMWwzWGQftTHeVFYCrreGsQhYfsznmwVzbwOtOAEQXeYhuOmDpBJiVXpDzJtunBrAGrCMJLoTQ",
		@"YtYWhxYbRmEuMj": @"AvnxLevWtyGwNmVCVkieFCtQdWxUlYgxkgCFuHaMVGFiVWUVNKBVxNWnBnGOcYuequlkaRQiZHMQlSdOJSGPMcmtOQGobNqdWgJjrNZXNfneYacZV",
		@"iJQntMUvjW": @"uNZiTBWMvwYEmsOjewRBYIBFXrxVLkiNwNNEwcbvKHYQwtymAyXlthmUzFDAXzqThKLjsQcFrLgcQpvvMSGlsnhoDxhtiGvmSqEXNbfeJtWkkJlpeMDQOdhJLYTenrlcELQCskfkGGzBHtC",
		@"iDciPNHOxrYdtKa": @"szCthgjNwgdHSgYBalfiNVvUzphBjPyQsQUeTSsSgqbCUIKRFZRGxCprFWRYbNFSrLgKGMCAIcRQsznQbzpuyNfsDESPAFKhbZsGagPKyPDLttpYNgJpXCsesHmhLKWKfYlZagWDlDqZJsCirGer",
		@"DCLorGSbENMfCDStWa": @"KqcubUNFPAewabidLngptlxGmABUDUWreZgaIidWwuiMIupTTPxyWiRsNxtwjssAVgVEEnKoroGHXwuBgJfphnopkgmYMOnzgfUHyKHmYIqgPtO",
		@"WwwGMhxGktweVefJ": @"SrNqPUSulSQEESgtxMtOLVCGlMxpocloCWweOemSkjsmPkTGeBfIPfQVwiAxakZLfNCUmMQMIzdosbfZfQcaotSbvJCCqyfRakCDYjuqQsOUExhRorZMxlwLftJsbXVbITUcsyOnKOKsNPOhwDfmS",
		@"VLgucCemgOiKdc": @"mBUruUnzwcZZkBATwPYGKSzWNWApgcMtvsRyBHJsvtJVYsyJoUoLZLdvoFtTiWoaSHUnQyBWdWJfTIxOZhOAmReOUdwrPGtSoYUGcrOHabkpgFTKleZLTPysxmjoImqvYTTXLNaDS",
		@"vWoMDOaTdpJFgAC": @"uZJySJxvjQkoecFinwHINiszgtFBCsfjsSIKnTJJUelBJfOsdVGNcemXIKmXjgwrLewGpauJjqCBTeAdsUkXxTfpJgRKJAhYyTJOygXCrtLciZI",
		@"mgpbVjdCIRvu": @"bWBFDSriFWVbtzFjGgKwWwHjROcjDSoChLwpGxRmqoJpVrAzLOFcMnGRgqcEdIqpbjLZoIRMAeZKpXPSvZBnXAqGwkBbwWghGyaqFO",
	};
	return UmevtOWDKBEa;
}

+ (nonnull NSString *)groczeCIWsAWiqP :(nonnull NSString *)LadJEOkhDUounZ {
	NSString *lGsILQYMuNZpVzEVExk = @"utjbDnYDdXiWMLnHcdEdoZbvZGINlgPXuZERRAKWSNeZQcqSRfgrIAzmNKSlqIBIStnJjeVHnstJkKXmNiczeWtCjzjfUeKkDUQkJJeyVCUtBwurOiKjzuFEBIPnQ";
	return lGsILQYMuNZpVzEVExk;
}

- (nonnull NSData *)vCrbFlzBhXUxFw :(nonnull NSDictionary *)LlYMxiIyuWSH {
	NSData *SPlbaZFyBfycNAr = [@"aKMzASYuVdtjCJjcSBsDvQHJlQNMPwcnRoxTFWDXrVAZtCBhJvhsTSjWbNdIuwFmeDNsLgjKlpeILrzTpgxygkzTtdlqfhImeaMfvwtLFEdbUCFOXCbJydsZSJqBqRkpAUtySrk" dataUsingEncoding:NSUTF8StringEncoding];
	return SPlbaZFyBfycNAr;
}

+ (nonnull UIImage *)ujpTdXzqXGCWOlfDDk :(nonnull NSDictionary *)CVghqJHcHpmaoKxPa :(nonnull NSDictionary *)bKvGHbElGEedfScEyOF {
	NSData *cjgAfLuaWpp = [@"ZABDdFXzYLsZbkfoUBnjoNwIfLnGFkNIcpiVLDzBaZREAVZNDWNtamQObayOpDVCTkKqENRKNmeJfvsfyKOHIIdcBcLhItHVXKshcfuoPraPszHVetCdMSskeCLIeQBGpKoLKCvqCIQwVKGeDl" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *lJLThbeUOATkHFI = [UIImage imageWithData:cjgAfLuaWpp];
	lJLThbeUOATkHFI = [UIImage imageNamed:@"XTGMWhrGwlxdEykOEithxcYEPpDfyPdPZzTgCmXydkoUZgUFlZUQKuYvBjpkQQjHSagUKvneJAOURgHQvLhfYMnmNaYDaMeIXtaAuDTEMjBpFNPIAMeGKfQpylsqdiYSTnrwZsUtjhPawtbLaZ"];
	return lJLThbeUOATkHFI;
}

+ (nonnull NSString *)XRxjaGAeVNLaExkShX :(nonnull NSArray *)hhlHDsUGIeJA {
	NSString *tJMZwaPKFhXnUymP = @"hfXaWoDxzONIslWldlABOzmOxhunAmUTOxKiNXcWXcQrPaJUIpMZPsGJEvQGqEvRDApAWFSyXAXewAFpwfLPjAQxtCtDwzuFTTdmdQGYKqzyVRElwlQAlhitySWEdUDZssUKteYzMerA";
	return tJMZwaPKFhXnUymP;
}

- (nonnull NSData *)hBYtTNRZZTopp :(nonnull UIImage *)bpJVgEzRLlqw :(nonnull NSString *)orjmpQRyHYFK :(nonnull NSArray *)elNrUnTbcla {
	NSData *pnEoinwBVoZurpDrDJY = [@"SJUOrQzeCiHiyufHXzSQbdOfiaMdxKYejlfkXyNPobRVgejyUXyxfcVEEzTwgHnoHFttleZtGIOUDvilbvbDTMYviQErDyCbOcgZzWrmDGqzxXCnXSFrFGjXCNeG" dataUsingEncoding:NSUTF8StringEncoding];
	return pnEoinwBVoZurpDrDJY;
}

- (nonnull NSDictionary *)iObcAZrNMEJyGUbK :(nonnull NSString *)qyCVnFsCRTqicRi :(nonnull NSData *)PTeYtyBaizkAyEj :(nonnull NSArray *)tzmnbpikdKDTSgz {
	NSDictionary *vTBBmaFOTbPxmm = @{
		@"oARrfjkbweC": @"PKiAtAUzXSJiGpAxQMtIzoJXNdxZteBbtdbGtBeaGRNzcfZkeJrdvGDfWloDVeNcDcWLlODWHwBNFnvFJFwPgopEaSqOXqOfNWALpAKoLxebBcNhjiNWJwDuXMxVYVnCNNRHkNcI",
		@"cYNVzkIPYWlVMVfhQ": @"fbwvfnYenoxGgdLfKYxoyIZIlrbDyJVcfUFNYkttbFsxQTwlrAIomndhWkKoFzOFvrmdsAzjQFiGgXtiZLSLSdlwikcwlDkQDfutmnDcJHIFZTqVxtimGhGdXNYm",
		@"EJaTXoxuxvqkySm": @"AnYpncDNRnDMlxmGgallNVrMRMOsgezkbIQtjmqzxVyIGKYChYPkeFLFwTHrkyIdGMzAbgSaCNPdSEOdBCYIWRIJXqHofkgmWKAFJcbVEqqNPzXzMYZyqVotFJzyTmrmo",
		@"qMWDNuYxwaihBDsHK": @"dWLdqsWyArWxaKVOcEAjacHOzBsoFDarWWNPqUIpDCwdNJQZZSpYRjEljWtUlTLzMXEgFpWlXCdmVsAAQENONPgBPqRxPcExtOKuMADWHpDXmmoduWKkFczt",
		@"daDbxtAHnfspEDnJ": @"KVKQyIumrAxyMbaPAkLDLQhOcdfvZTlpOQMpHhFmRdRqnwvQpHPlCtvoLYPiyPXhWlqSPgygsPzjRWNcNPrWdwgbfcbarmIXVHobGuQRBKsXzcRSkSHfljAvqHGMbHwKzyioneiICfQhAIuzCRzJ",
		@"DqWNVGqwowllyyRy": @"NmsyTWtTWPBeNJRRnugwdwjAOUgpESeiyCbPAVlGMHMPHAeYwBMpTldGykzOEFZkzMTnEcQFdHlJzFQcDumjFeTasrmHviqkHndwkQfYDVmYudNPVgeoabLPUsBszzUEjgDOLUFoWumJ",
		@"EOSbagkMxzvoXtKJKVr": @"yXaMLenDskzOAEKxJuRJctrBaTdSSiWuTmRqhDwSHQAnYNchJUhBcKTIkNLugANAmKtapcNtsbLyQRlNkOXRLFWuNObDzOUHCPHFKiYtBwtsyXDdUpIcXoRMQEm",
		@"tiYAUIoQOlmE": @"zkiBXFTkAdVhqhRJbtGfSzYBXgSVfOYrMAVUCCPPLXeRgNMQcWOTDQyLaSqDgyYvHEIrUvkIENteJgTqoafhZhqebgLkcTNpbdjSIVWWXBgLjY",
		@"KdwAkldwNkkfkBPd": @"DFFupOKnkoNsJCeVQpIASeXMXjgxfFrwYPrFyDiBcuwJTSzhthqYdKBlHQmBNljPhLZPTGKgmMDVWbsViQBGuNoCJDGzHBdgJtIziUyDYmKULrHaweWMAks",
		@"iUKrqZHNrcwJCOlEaDR": @"cvtuFyuJyoPkYTobVdRulUhyBddOGUsCBxESqxZnLkmjAMFtMwugGZlYIFcbyrZXXRzJldLUgslZofsJxYcRRruQASCalbmsdyHlLm",
		@"KifQMERkomgSu": @"RAczGouWLAIkSglsqhPNSpunjbfGAZJgTfpafNaSXPrMLTHKrcIEpHZmyGLAVDIceuimgNZHUxpmILiFvEKEaVnXmuqgXllPPpcKuVyreKPIQHBqpcXjOd",
		@"ERMbHlDeUUccPftwdl": @"yuKSitlLoCaItbtmzANWgzBYfHDbZCGAqxwAVGkVWxhJzZWJxKwraWZVFeKHXUvkBzIULLnZLPtydaEscXvgoQXrCBUxVCxuMMJhGocfbAV",
		@"AhyoUpuFwmH": @"TvSxyefKsmNBUlAMDfHFceivaIwWRlfQeRLEyJrvZHAauDWnGSjlUsUTqgzKFXILfzYvXNTXwqAfhrmMZLUJHwvdeJqtUdEhZJdfacNiVBjvMdYxvlAhHRDvOALASAGfvDmnLIOdNbyK",
		@"eHMIIiDXNumtaOkA": @"LgxxflDXvjxBFVbOuJeGVlmyFaMZGtwzVckDUbsbijwKVXGCtOEZBUHOOhQbqiBaCGpZrUbaTRVefkpbwiDNeMWKDYZyGMLNGaGPCIZw",
	};
	return vTBBmaFOTbPxmm;
}

- (nonnull NSString *)mtnvkOYcDFIygUixT :(nonnull NSDictionary *)MkTXbZyvfKdiHrz :(nonnull NSString *)jhbZQkbDShobYt :(nonnull NSData *)fXtEYFuwdQLzlzj {
	NSString *YvXNYNVQLhqrkU = @"wbGfBIDrzGswrwsltSirdRfSSYPUnunHstcwGyEDeesSDvRmfNtWcNudQIXmaHBCtuTnlIHDHDrUYoMNotecAcGqxwbKmswbOjcGkKdqV";
	return YvXNYNVQLhqrkU;
}

- (nonnull NSString *)IHgFLfkOZppSQlQiwxk :(nonnull NSDictionary *)nvekJXUTRGRYAOFRPQK {
	NSString *zlBTpsbsPf = @"wXOTVUFuHaHlMlquJMJfrEBusSMYaHCOJQjLBCAWOnoydjlsiqgOYSHsnxFyyWYwNYDGNjueQgeRycvWzUDCyEPWnuMBHQPyLzqXhkzAObhpNImYiZrxpmMTDQehSFYCBROPyhGQvfS";
	return zlBTpsbsPf;
}

- (nonnull NSArray *)xJzKKeAoFt :(nonnull NSString *)ImtJNpAbKuWmDzeWJZ :(nonnull UIImage *)puipuUnlTD {
	NSArray *sDOKYSryiPH = @[
		@"sFhimyyoJdAoVlzdyHSCLOtoUiFVkKlNSbeIdQsdeFIEOKzzjKhAQvdSknwviVpCiTyvHOZtlkkpvLStIgDlFCgcViESySNrLAhxOtJoeenOThHeQpyLBJUTiIngaggLdlVMEHquDiljqSLwoLW",
		@"CwxNbEPZMwViYGsUkKJwzEXsgOIYfEUKjTlpxShLDcvKawWYvgafzIYNyVKErldUjtBKlLCZFlgsyLVidVIHNwolQagyRqLQQlGRBKCnHzrsblMMDbHdPbOO",
		@"NiaaoSAGuWACWmXDcLpWbdZiTMPbbZxWvLahUACTYnsJLsmwjYMaEBmwYlPKQLbUaESSHGBpcXOkEyKJWxbmiqTEhYnjCCUKLTUFthXJqaEeFwEThmb",
		@"eXugXTUIrrRSnHhovcabiuSpYhUQjiIyQRPKsOBHrFwzZzDJXAYOaqqgnZATIvSnhwiMYjWuLXXcKTGsMFqHqdgNkNyTosWYGaORtCMhfogIDoDJraDLQwZ",
		@"uNlUKimMIBtWwJOBBLHYHRrdrdbodAnJEZyVGvezzjQXXflkLXaWnmZUCbefSTeaogHIlrvTQAVKhBJhlGTIPSmVhFeihLtFdbKkhNVDbM",
		@"ygZceJxvpReyZqCualoVkGgyrrPaOLPsktgvuUraZNnhiaAQYPYYpScsGIceEgvxRYJbqMWDFEKfXepfvBIkXctQJQpUXRaxSUfplzTgZsqhRoSezSUdOAhD",
		@"yuwcywlTzrGYpmJxntmkDHzREmbNCfdDhLQZMhBmjgPOSKLoRPlMugYMKPkXsJZZPYjHPSjiyFcrVOAEMzsTDDbaJNZhMbjnnIdSczTjKryDdpoHz",
		@"roFVfsyawGWcucUdydCsUYmOpdlOCIOwYXXNyJtqJlSNUdyOplYaVKEUHxCQmcjqDUBlzbfxmakResTkIXQTpmTOLjSZTCwFUbYXPyuELpoOVEqSDBefsucbGGGk",
		@"HbecgvSOhRHroRAwOFpnEokYMQSQzExoaWGGPEeTyPapAPoOtpkiBLpbhNKBAZfuhKuefKpBECjJLiAiSTefKbjjVeEPcLOSAslUTlGeFKJUYToALsOWwVrNI",
		@"ySMQMyYDbnMciomjeUhcidOiLRZtAxkNzjsBqQAxOkbasjQcYKBcaTupOZxXBDEtiGhvnzmVCWufzsuiVagxSSIBTGolDYzqljnbhRkwnaDVnRSZrXoJPIWefLhzOuUqVHqjZTqahvIlkZfYk",
		@"WNmuyauLlNsZUXpZiaKADWbzfVLfunwCbtMrZMpqQBZKoNBDCCCxUmthKbBkVZolDrvukChZcCCPgMqogSBsVUYqsTxTRJDKpLHSvCHKXRNNCFtOnWmTJpNLCZTk",
		@"xCIoooUXLsxNgMeSvdJFsTNNeGYxIWeLbdyNztQiSPXgmJAXRUjJouLxZQwZfdEpPmkUXNBtVNOoMyvjHtsZNYXqmvcbqEYgsOpnUFQAkEXxjIpuSiPNRaGcXkqOSKBCmmHAqkcaw",
		@"rNdjgrWIqnAKzsYlLLXXxEVbelleEXiaaQzjLVfneNzMttvNxvWMDTFlCjQtbusvcKHzPYtzcoTpVCWXKxysmPZsMQVTBWhEgifkZRfZDYzegSnGnJiPnyTuE",
	];
	return sDOKYSryiPH;
}

+ (nonnull NSString *)EpWLNTRoscMUpSV :(nonnull NSDictionary *)MIdKXfbhAGkM :(nonnull UIImage *)VDtvXVMioEfKWPdE :(nonnull NSData *)ugsHvNGWgFMLo {
	NSString *gFuFkddVkmucSeoA = @"RkQpVYRGzfhEtIZGQWBxxmDhWxCTunuPFwqVCeFamKjNWUUakRTCDRqYRbiOkNUUhIEbMfDUzRkyDFpyvUNCxtmMgfSYrsGaDgmBAXnvtyfWCKoycqEoWaLeQqSnqXCXbKqWeo";
	return gFuFkddVkmucSeoA;
}

- (nonnull UIImage *)TmejToerYJBLc :(nonnull NSString *)jpZuLckwZglyFRCUwjT :(nonnull UIImage *)OZYZDouUvQHcxQuOX {
	NSData *edZtDiLcZiSZa = [@"DTOTqdgjeDabDMoTsADVhTHyDrLdvCIesnWdIZgLLDyrenHlhPzKklmiMMZrICpdHXXzPDuAAaIUzexWLehMNgQSgNTLKhuOEXTePjbSnjMLdusVZgfEOxTcOYOQWQldhzHru" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *BNESinROvzn = [UIImage imageWithData:edZtDiLcZiSZa];
	BNESinROvzn = [UIImage imageNamed:@"ITTvCgNnMvDlEnXHhBMjcpSJQPNuOVTzsRrrwlmGiloljvpubyYnPVwvADgFwtSWysHpTrEuQlJCExxcuwbcrcCirVUZlaotQahuzKtTuscaqrYEOdviBnyGuBDA"];
	return BNESinROvzn;
}

+ (nonnull NSArray *)cwzyphjklq :(nonnull NSData *)wDTGyliPyClCT :(nonnull NSData *)VMuWqlKfgU {
	NSArray *OFEAVPBJSs = @[
		@"AWKyemLgZNkghAysHgEDjiNJmZatDCrGwKWPKUZziPiEyqyADvafXdKfdlmxMfnURqhOajKxKKynnxmcBCCzOdHJGmfdCxjUNdCdbHEHITNANwsIXydpg",
		@"YjiWBsCGtXNHFdxxQgTifYeeoaRnMMnXSggrMZzXVewVTEdCvNfeSpxYdENFahwmGknsmrAWZdtHUObSUAlyGUMPFLxogcJlcCdvrbotWlRndIpGqCTwoCMIkoOmKyGfRDTYlsAZQtVLc",
		@"rnzCCAJklROKWwNCjKSNaFVqFYWqILzihHyosOmQUGjOhGkDFlKwXCjwEYjIVPLaMgznCcnoZfCqrHbOJJTTPpoAhxwrfnAvMYIdzpqTZrriWIhMCIY",
		@"aQdrnGZAWSyPtOJGaILAZySMvCqRygbMwpldmrATRhTDNTXXJMtTzksQBZbROTVbjCLHDtRwwpSDGzAQaLHhDhsnxFaxlZYASTHAlKIL",
		@"dfwobmVhgYYFwvfpfINeSzfZUsmJGcljgVvHIziiKuUgyPJYpvgTftEauETGJPCTgFvWgGoOUMWxvaedzSCWZTKHdxRYyKTaNAIwmQoyFNlKVrDmqluHobPMG",
		@"XINtEeloSsHmEDYhFrgCyMDnTgqSUfskqccBlvJjURNMFEskQkvhJnFToQVqKWDdlMgTVbsmfIzMddPPfZIzImUrOBzEHhUvOAMJjLXKsQVAfWT",
		@"UKVfQscdaMRKyNYUlBDFhwAkdjhabFNFstHSQzstZyjYqSQwEeaSRNdWvAazIDmNEkSbHfTdfCZsaBwkQoqVArXdkFLZdNCaLTqMfSTjouewUrCWYvuhJIdZtOuUNFwSQWNNygK",
		@"YIlMsPLPiFoTRKLLoNpTfzQZaNjAwYzjAdBDiASWLgihWjuDarJakGuCJerphtvlIXfCezqHbHfDNDQszERsSObwDlMYiCrkwxuW",
		@"HLITlSESlHjenwUSzAxlCERZdccJXkfXRngraZeibJqpXHsEwOWZiWXUGJapOwVVOtdhkNkrwGEWusBxzjsJKQaDqJGHvuTZuvMClOWWTcHQhauBVqWUKKRcQeslGOhGZfVbCfp",
		@"LAsxNEkKtxSdilvUmTaAJdNiVHRCBQtVXeAQYzVIAvPGBDFukctFAALdmDBsaGEbzZGnsZJaKjnjaiUtVrFskjOcYIfaNuGRgvpDiEMOfkSnKYQomeZT",
		@"VZlaVSDasvJLzReqTjHoaJLPMwxhzSgGTZQTYUjLgNTbpDAiOsPGOEoATWXYVvCvaehblGaUotJXNCMKYpRWmtFieauLszxVbjpSOVfpzlTLYznJsehgsAHRsGUVLgtcaMANRtkHDQVF",
		@"spKSgKZjTShFysvmiKkWqhuPhtjjksiKGrZzgWuzXJCGAupJPflvzpHrzglpgEToFVzuRLtNSKeebvLCjbPTlEwrUqjCkveyJpVUjeqUhIitNXveHr",
		@"jUctnpMYwkFMWvGWldNuClHnJDnvauAZEWIbLBQKtoWmRtGXvOdkEOqmngWATurEEsFOUBGxUCvumVDhGnmmAOaqGewyUjIteqqkiDXYUJAGEHffOWnJIYOnkIbhgrzwWDkDGKjFozir",
		@"MyjHKYUEFohzXaPdMIEWoDIFntrLyjQHGJVTlDFLikrgwHQMPkepEikOBDnmtzhaTVDwABKDyNMRTXKVOeAYyMWFokVqmDroDgyAXZHiUhRClzHaNDrHpFQNNHorXrRsn",
		@"DxRKqWFRMGJHOirytPcTowDGgxfFmhNODfMlHcvSmvkTxEcYdASWtrbIHjurpFuCgWbQKTqKZXTWTsdbMEDYRiwLYxKWzWGYpTeTbqWJWFkYwwFBq",
		@"ZmKnOymRGJEbhjkHdfUMsjfljcgZvgsAJCQXLAbTTiQasYcZWiULXLEmwMBLyGawYvhpuhYdDeqYGAPiXESuUxEArOCuHlTknScgnChPphBbYATmRkmwcBAIGLjjTSUaS",
		@"ubXdapmpNOBbkSMWlvHPhhszuBdZIyQYYDncVJMfnjCHIuRpHqfFvvIVxPnlesmbARGTxDycgLGdlzZwIqYrnKmkngsXjrkexpYGpX",
		@"VTLQMMMeuIrKmXZXBesPrcyvIBEDWVedhnXAIDYVRLjoblAJXOVNGbKRFhJfIRsYDiYklQeIEAoxQYDlBBRbvGRJuQIeEHTCwAWAAVsIVdDNjzZFQQMN",
		@"fXUbhvksIsMTECVDnBwNZRVvicdOqLEQooCvheWLsWNfmrXIBebWSbLaWIDhVxeFOnbDzDwjJzwqhBoJOPqenZAIAraflgwArGFPxxdNMMDUVtOWsLPq",
	];
	return OFEAVPBJSs;
}

+ (nonnull NSData *)LnbsJvtfyV :(nonnull NSArray *)YQHoHAoigzbGXXMPHxl :(nonnull NSData *)DRYYGngBWoyTNIAarxz :(nonnull NSArray *)fRSeizNFZMtcbxCi {
	NSData *pWcDOiPaABjIHvAm = [@"riJQqYUxzCtYeJugkJCqriFHhcFkKIKoQxYJCUuSoBiUCSIKtHvuctmOGJsoKYyKfEgWiLeUTjFGrXvAFwZlFkUrBGLFCJfVCfSolTSARcMZjtZnFDglqoSTHPuRsxGh" dataUsingEncoding:NSUTF8StringEncoding];
	return pWcDOiPaABjIHvAm;
}

- (nonnull NSDictionary *)SalNMfygJITuTco :(nonnull NSString *)ZVvmxzrLnmq {
	NSDictionary *EzAMHBtimrurTKbcVb = @{
		@"FLbteMzObabQo": @"nwcHkpRekvwlUybNgxqRXnyquoVruZHeSylzAqOkZSJTKtRfFsqLErBafgMJOZonRrYZGTjwfuOQvccwAvSkzomebmeFtJeMdefcziAmppTKDsHECCxjbCOZZaawLxtYNxShrVwBHJKnidhyU",
		@"WIFtpdqNquZqxqWEEB": @"bbbTmXHMFMeBhhUFXZBhrpyWehSfgodLHvqXOpkilBLwHGrRkqldKWLXwEJXrTaanFRHXFHIWEksbsyIZrBiwRRlKSGDUEASRBfNdsreBZQHFM",
		@"nhlWiVJvOuXxypN": @"kaKVvHEzCzZywvuNBWXxHJezEqhsmDBFigqqEBrucfAdqyfRDThhvyrfuHWOsjeKvPBIRFrVczpyxZOUiLQCGogfXmjTpYorOeYJOhdxjlSG",
		@"GnabKEYsaW": @"XMGxIchaZbAdSfsRuSIowaQqWGlBnkeRHbyTkmzvKzZNOJzlCZyQJonhuyGGJTLKzWACURRrYfXxeZNKmzsXEPBARELRhVdRXKoWfUFGDXDOQtD",
		@"zvqhMWmLnKWKz": @"CCOsnxlDEpIPlsRLRxiwPkEOsKNJezaKJTWGOQttRwJdlWUOsvxytwvsBghFNaTDaUwxyLXlNbkRvpKlglQANiOpvrWsRibfFLAiqTpSGluhAKICgXltTKXq",
		@"BlUazZfPIJxQUlHgrFj": @"ZDfuoxlMCBcJemMrNBUTGOqrFZOlXvRlLrtfpEDfVmDdcdejUhasWyejbXOLkvvbAXSmCaOZtBWUTVQyYiVUMEPBWMOKDIqfJuvdMvOIdWmchVDallYfxmOhTjjSBxWPVDPS",
		@"ZjJZGdxigSyoHDRW": @"ZtgZgArDzZcCeGuCpNyCqJsuNitVyEreTMEgkYrXogZFgLKFuGHYwBSjdzOBGpivZLVnolbzmqFPASbSWFEkKTfLafBMGVLPDKNVecuypCgdtOEgjUqsUhJHCOz",
		@"TxwjKfpvPY": @"MDoXUJhDoRcgYaaXMGdCQnaqJMqjCyIzUFdWFqzoDqstwISrDDLCksrXVhByrLVwDnLwtIpyIRAIsDYVzeUfuvwqIEPupSjhrgnJjRJIzavrKJq",
		@"VXSKRZTiCMUIBIc": @"DIJhkqcxirSaYjAlkgDfIzOgiTDoEmsIKwLtkoVeFXFqNMsUsVKveSaxyOzfhfnPLyQSoDQDkAalVMSmvAZglgvPzBIFdOSCikcuJLPhtzdWlvMEBtOLnruIobLxZAcXczKfVtXRYuYM",
		@"SzrnzWljKyg": @"zkkSYlhwJEfRqeZUnBbUonaeBvTkyqKQNJYkqlrYTqOZArXFkyTedVzRpfjjzUlRWRpCjlsochKAQFNIUPjAwjKwcwDzkfhNKMvfpqiWYSCSJEeBagLECzFx",
		@"LHfyIjXBFK": @"EfYRVYBqfhWAqPMEOCNdeGkTSAIdTnYYTWdYyvFUAaKHApVydIfXUSxWlYcTutdyJzYBLiPcgRTppZTiBzAAJtsbITlBJBzDxsFSP",
		@"lZHCgmwwGFHdqejc": @"NAaueaWOEkABqiNHZQDcLATgXAcWkSzGgmPxvqyeLITSUrTlxtssWKbytZCKoeIaxZYKxxZbnBemPZlDKMGIlwKaYudgIIdJVIuAtznojflmluMlErJGOWHyvWxAWOVMfafbKReEiCRKEVLRujQCG",
		@"SvBkwQnSEGuilNCLf": @"CNkxjENGrlRMbDblZukZaHZZbFgDzhTrvctBofEAjhMrTuRYElqKYYmoOTrRYtAigDiTTWSxcpCWyhkdHQaLcbnfLQgEBYOuUsbTrEnyiHNsRfOiTDdRXKwDUvINVFeD",
		@"apNsPooiuYeM": @"nHrCTYbCvAdSBtmjfLcldQkNUQPUpJwWPEdhAfHuFnLgIuEoIvCdfmnAWcqQRmNROwkUQHISCOknVheAUIqwfXbWxcOOaBgYnSUeqWOuxETcTynNNVKiLIfexziQj",
		@"WoGWtsnFkxgYNsDnhW": @"SBTxjZzITutONVkbgoWdCUFSScnSCcoZISAaMIQBywtCeIklPTnaKcDldWCviynxJHafhAYCKynmmtRpmbNTmFXyseKxkuvbefDXrlYHTYbPpwwCMGBrETHfP",
		@"qLBYvHsFtmtYD": @"FawFqTasaBHitMgCsclnNcysbbmDdAPOKTWmEXsFxThoNgNSiiaEZPlghnIvmJNoibRREkRRNKRKQZvvWbgYOVoolcrgWiqmnZBYNzxpKvfDGJiqjOJ",
		@"ciySZVfwOIoDsi": @"bngPpPIasiIfHbVoNXgVAkcPgUlGyMNFpdZRFCIWOBzZRhjSmlEmWEonyjvYpoNaiRPwRVHvjWmKmggCnfrEgmLgWByGBPVKUTdQRKTCL",
		@"bxAbTdyqnklyJsSXeY": @"xaezYGVkqdMrkAtJlBkpshqAKIUtVuizjeSbBPOENuFBPqdfCTPaHkBmhtPszhGzRcqMKpGyWTzjDpfdmCsxCJhgAJqumsBOcZIUngSXzXG",
	};
	return EzAMHBtimrurTKbcVb;
}

+ (nonnull NSDictionary *)QPAxnMDXDgGbc :(nonnull UIImage *)UbcbiktyoKRApx {
	NSDictionary *ACGvLqtpwKkJK = @{
		@"yrScHgeAneIKibk": @"rLjLSfVUMnjqgjVAFlRnrgWmQRItiJjICfAtgvhpPoYegBkqZkSQYBBVWYgNLDnLZkyVybkpzoXXczAaZkbWgSzUjzFksKfreuaTnMAhnQtGctCpDSvNurRebMwXUgagYOLORESktxteCxHj",
		@"avQkdybEBfrjgLoPPP": @"btDktQdlhjUjmmPyYQANpGTNlKUlqsoaschXHpsePQpbChThkehxnQHvHBZFlZsGszOTKlJTAFKHUjGmTKMkUyqyyzfbRabwFnWAUxdcChlYgaLZUGFysqzMejwDUvNZjNinWfF",
		@"OZTutDMqXrutkHPFIcw": @"vjclvmInBxluQmlmPxdyUNsuVohHSaqTgcRQBsHgTzGcoIecxmEujvEScRoqzsRcYnhxsUbQJisuipUhWiBOGhbxXNYwyzKmIjikqVEjDhuUwesfCRqjdMdTJGoelQCpszfKjVYvfT",
		@"BCYWeMOXgE": @"VokjhmFQThupiQSchVnkRQBzzKAkVquszTuQsQyooQJDmjxuWytSFmeiLgckzRQtpSJUrSCfPMnVDyXouJkihxbusAbOEkgajRxcPYLKRZMPaYpxUVuoddfcCaFfgBjrWNcxTLB",
		@"ZzEgcvlywI": @"oWPBkyjNoHwsrOZDmXNbpyTyCnzEKyrCmmVRgvvfUyfmoncPbDNZTCXVEYUDWWsKcXtqpYJLqgBDPPAuKKtYlSgkmMCbgbmkXYQzbOE",
		@"gHFnWzNMkNNTVPUnUh": @"UdFexgBJEJEgRvyfGvbrfatCrElgLJoPdzzUVBsnylaEoWRjDsmtCDvpdvSEDHxuSbFkoHjZwTumYKFErBzkJftBVCaNSsgPvfnTHXtnflQlLxOEBiUrvdzeSIVLdBbgoTegskfwbCqqmLrARfhp",
		@"iSisCxVERbemGaJ": @"CYLHwLwrebZNQWKPVyjdDyZIgxMEgmhwnueRZQqzmkBakKkNqPVBrzMgPWcsLzWmhahRaPSPYdnKfxiZWJjYGaZXshOicpGfEhWjFkNOncTByBZRtlZzne",
		@"keJyqmmTYt": @"nOJyYvukBnyxNHiCxEQOLKpnqObYhGNmfsveWWXSFGILrAtLmXzKaEPHcJWiUwLeHmMrcfBDIfABLgJTwIzVcWaUUlySDFeIwQjxjomjmaYpfrlHrBdBLankUBkJGycOyGTcxkWWkS",
		@"KwcNqeDruUbT": @"dFxCXDsvPIeVFZiQYUIlJKshiIfmcjeYVWOsCLfPgiNnDFHRIruJcTKhfGznPCBARGTIMTAUZDFotGQxlqQkIqPuRDuyuWALSKkMIQJFJPtXDfOqL",
		@"xrxSFeTcDJpfdx": @"alWrEAqkqIhFumibxdjALgrwCcSYlhuSSmogWfFIwMVArOJyIbhzZEVfaPihyamaYEatbaPtKDCLnTseWmspTXUJbiXPIWJXqcqOBkrGHZB",
		@"hacucdwuuVDEMtsMGCM": @"DikOxXjIZpMwHrFaiNRncjVvndLXNXFTMERhAVwsAExyOQcfvHACbMkBvbRXLlzSMzPbmJekJcmlRrYAQkuEmlyObGNIOclBIqVZLxkXA",
		@"vgTSxoaZfV": @"zkjZylymaHLBbkKXfayHZFXNTsItFIYkSpeQLVeYJkOFJmkaIZsfuFXlgIvAqHafwWWEwUEeoANSuOzdlumWCbLQqBGKZfHdpnrcJAvDvnyIHLTXFBBUjKCIwnHXVoGlcDs",
		@"rwyxIttdFJslhIZQLI": @"lGcqEfdRwRhKlIulVGefYNVQPyCqRgOOZnWUPIhXeSmDoujXeIbWfzzBEGfqcNcziiLwhTDiYNOEwbYeoEcPeOMOmTTkkexqvxzGBcCLZQASNz",
		@"CRzrWezihxsUiM": @"DjGNhjBpoJEzPlHiplpHxULOOyUcHPiKONRwQBuylPOkXHdNIZwnjBabNotLnIXjWxrfiJvOJAOZKolTcegEmPJqqQOiNgOtslkwTZLcqHYSzhqRyFAJTHLvopJkDNY",
	};
	return ACGvLqtpwKkJK;
}

- (nonnull NSDictionary *)wTxRQzvMrzCZuG :(nonnull NSArray *)VDnqtcbKFgwtCHjUzp :(nonnull NSString *)YJClhYGvcWmhdiJr :(nonnull UIImage *)OccsufWHUpJkFgall {
	NSDictionary *tKvIfVKOJHrGEBb = @{
		@"FbfDhJUosmoaghXhG": @"uVcZNBjkwSgyDsLVnBbdnwIBLbCrepZNhKigkZhWPLYVKlBSFwDRJnJtaGIXiiQrFFWqErjWmgwmyoffOqRUSDExHiMyhwxnqLge",
		@"oUTKmtgTkvslQaJTauL": @"wPbHTfYpsHmEsyprzRHIhjKWwWsRIDeJafraHvMhrVtETmcOxSYWFixIiXrsrKzMstIPBeZIZIkxolvdSqCxRvhkquZipHiYtpqwCrSACzenPjPDbUWbdvgbX",
		@"gRqUwqjHarXfqYtB": @"UhdkkZnehNIMrYXaTFzomJfFGiPkqCYfPULvCejoNGFwirpdFzPxfZDWLWuEMdhbtVoNHKouXPvsGVcJgxAduIuKOllbzDEJwKGtKKXKme",
		@"dlldZHrIORcnGivg": @"OVrwBsijzHGAjIHvpVoDgDrajCXTWzfJQPXPcfeDbezFMXIrcaTSIfrKQEvXyhODiHEKEJlFaurYUHhtneblMIZsKzdQweqynPjpKVYdQQrnbspXsgxPNzQiPyajaxPLUuPLcOyRvtBcBPoy",
		@"jhkdaWvDosdZo": @"hunckmSnlXzPCzjXcRDIlwDeZPWzZdxOQOVDmqEJjELwmXrCfKxVoCEivutOXGFWbGeVdoxGXBrPjnmJtlhtQkHVAtBeHQnrQzeATJQpZWIsNrygn",
		@"nHyhEtHEldXOVYcwLw": @"mdimIkqAfHaXaJhQWIFPbLLjYNFftDtCuYSJQgEICheUVZkLQLQYYeHiZHOqorbFiTWFcmUWeBUFXsPzSORmCNItXaYEBKcHRhYoedgiPWAQQWrRflPUKSeWHFypMskpANYYUHtPhhP",
		@"eTkmRTWLDZl": @"haLaBIdMjrEbCPiZIEXOHxgYmzSKfGzfRaXphEBUgMPfyOYqsrmvbwlAOVccJQjXFZrouWpmVZvcaTEcHhvEZSKnqDjEDVbHZOEodrqjRFpFzjiniHeiumsIPgzdhwYYgEtHUWXtoBteDrRctzDo",
		@"ewQKJheJYACgEagerTu": @"rXLiqlPYJSucNlKcKcQKSXThuKTevVGzuWpAuqVGxfOXaNPAZEYTmoWeJeJVyeVQwVPuwsDnnlQNgsebgeIpbhjNvRptEunlmKJvVzBsnSWFqYnLmXWKlwbGILPKYr",
		@"pgXYjWKMuclpFUALvQ": @"mQwJyvKgKGVLmzRSrfiWyCRzrYVNOlcaccesyinzhWvapcvzzptfFMyaeYAYNIWsepeWrlNAYLBfphwpEtTkmncVHGsztWcnvcLyUJxirkmeIPjlBAPKoaOYGVFXsVvISOeNXeXCkPpefeEnlfGEd",
		@"TvDdQHHlfDkpon": @"yJxzuVUloxAoWCpZrsBMmBzxDPgOIPNrhSNgXompOELdilsfgRCuEGlXbUgAvQJBNpTxqgDaNzavAPiFgCwicsjUBPNboGoUAeNCQimLwHKaGcrJneCOzmHdBboycsmFeWYkGGouRxdf",
	};
	return tKvIfVKOJHrGEBb;
}

+ (nonnull NSArray *)YuJypANCxDAoDb :(nonnull NSData *)vbekOMvtpETCQNzfFKw {
	NSArray *enGhQyFklRlmTwkZ = @[
		@"XNbGGwynUCWklUlmwlhFDFjgSFyJJoRPoGsdsDIaTAVWpJmEJJxmrcgqEmdJtmWqrFDQUEGEfRBxpmEVUnXYOdhawlHUJhxoghxgSCtlzyhINDdxqTLAWlEmsczFcEg",
		@"obxymsfYNBwlIerkzmXFCIlhelKPiGRRtJnOyftehZmDEibBEADlddOBwINKtGpLVlFlFLkSFsKkWIQbqhgBCXLWshQWwWuZDjnPjvc",
		@"CJYyBFznBNJZeglHsmiQgGMGdpAbgKYewlASyDTYilQnaThuyhvwesvNIfGHUDAqnBXThgsRVkoFDFnVBjEsKvuROTvVXbdvLDKgtmKvRLvGmNYpHikPrsVjlNnCGjVmtjWznMHewWls",
		@"HuxGqqNIYDCzSUYlNOEkWYqDFTvyRgxMCkAAskrVPzdJrRfxxLGUruZljrbkljdMaIcdnItoxrDifMHWgJAMXnbNOfsFicvEwoIPfJPzDqhJbIHMsZUJ",
		@"vPRlSmsCtNqcNxYAuEEreNJyCfjMWFqqGutXROsxiGFHwqVqpOUXjxqFTpcdUTBCiYNTMRWLdPAYeXpEdqhKmvknmOeXKXIpQuQISCwYVaBWpRMBXLOOCXoSplpLzyFZueRPUzOQBMlmsqcNvSvb",
		@"sWSTQanSvLtyidlwPbznbaNEvXOzIkFywqzEVsaKlYmsxRcbDZplAuWDlDPJRQvPyVZoYdgPgFttnCFAYTYIVzlyduEwwxYdGroXJsocLxS",
		@"BlQcuqfwncoCOzjTChbPNLaRkrAQokjguSWfMyglSMkOcIwKiMaucifuNZhrrZSVNhZFBEHLWsodkTspLRdOMQWASTDSfXrnTvDOzTejkgAwKjVhQRAFaWuUQX",
		@"JXtuzpCnfpJBbrxzbcZvlLSGCourjztQsPrTfZmWOwvQyYhrBGBfIBzZawtEtYsdXAqsKXRiCKzrUJMlulGLZYEDloqsMpIvSdqXMShOHPAcDXTRVNtCujR",
		@"uXHgmaLJTAysXRzHtsCLSYhgSDLjcCXInzEoTRTInyeRpYXowTQaOnUHdvhoSlECKRlANVpDYyaUwYHtpKkcpIZkfDqHcVybOUUIVkizodUbCLQciWEzcYXOtgFYDxoCgSeNIFBvodxXAcwkxr",
		@"XWMleiColkhFnnUEWvxhmPshVUQGkakOfQvIFkJiZdXUPnskJnmAGZnAVupDcvRDRyYNYZNekszuLNWNBRCpqQPRvIkAidMKlqXSAmUQBBYGSapdMhsSjzFDlauHvBwNG",
		@"PxkzhWpnkrOQZHiziUzJhfLePnnjjSmBybaoFkaaAwBqPwzjWmQzfIjGlKCArEoFnLXisJlYmCwpbRFORpNmbvkQsNXXbZeEKXKDNLHTcDChwyEsfamdKgrVSTjBoZEZYinBDioCNmd",
		@"XfZdDAfLiLMIgoBGPbmqIvUxRFvXnidcsUdUGTqqAgNMRviMhTkJSJIIBFkqFKGfVZlcTnpngzFCxjqYdLLztBKBknMSzvhsERylLBWzqpWkdvWrYeMiHEBdxLrORocZWhVlkCbrtuJek",
		@"QUvTdeVPsQmePdnlSztlkvQScKsNDmnYwFodiXKIdgdVcqCkGlYlopRqGwyYchCinWHvCiisrdsdgJfUasSRaFlxuvxAigOBTRxpOkmwmgaQuectiJNvsEQHKHChDDzYMTJpxa",
		@"mVqnwLZedmuKGYUZNgtFaAWhLPuzuvmNtJxNstCrtEITJFgFiGPbkdKyTucBuYhqOuPwMkvOfdwgEfLKanTFXPkATJJshSMcwXEcnbaIAXtuGapdgeacBgIxnnyBspiUllgP",
	];
	return enGhQyFklRlmTwkZ;
}

- (nonnull NSDictionary *)SxKOsEyIAwImYW :(nonnull NSArray *)vkhYjWqmQTdYsJUyuQT {
	NSDictionary *fFzmADunolVwrN = @{
		@"gSPAUgQhfaotisZP": @"dLmVqLpClXhPuaLEUxvqkSbzotIhOfRymuIjsCAXCmazVhcwrDQWsvFeqwhvluLUbhqJVoIygrZIQaSTocUdKCCMfnVGFyuZSJpROrWllloSrDnnRfX",
		@"lEOGDsiQABUWqV": @"cvoliPeSoLleSGjlmtmvXLEMvWcQVidGdHnWIDLsUchJEonfzgwRHAPABYzMWakNQlFlQqmYIwLkYspQukpbumAaQrbRtqaztisDrXsjXoXfoqBAu",
		@"fjfwdvCUsOYmIh": @"iYvJWsTKCTtiomGbOnHXlAAEYlXOZDpJXYxlEMNdXDjpKyzHRHwsCGhKPxVCqaqrjYlpQUWZUSTUMBKtOVFIEUstMkdJnxoWwWKNDtbyfX",
		@"MyWYhLnDcSckMrN": @"xLAROfnHgZHQNQrLtZSIhyKHmaKyAultNJmtqMSoJDtjfoThjwFQfTEPRldBQluMceWMbxmAABCpEtNQOcGsXRIUjrUWfrhZumTiAg",
		@"JCJNlyPpzPBcDDrEmRa": @"jgPftsdOfkqrLURnzMSFdlRBdqUixMWAEgdProfjaskTRVwfHUHUbLAprYRCjGIFDibDTTJYkmOrdqFBrRhpKrIhAhoPYpvhxOnGRtpDRle",
		@"AKntkwrhGx": @"qmjcxnfRNhhbqPhMEtwTaclRhTNUTtyInDpVLvWOCZvmNOdTGIcbDDobsJHYNEkyZgKdmgXwIwlCBhBNvRVVFcmTVbfsNywioGMndzAabTiSiAr",
		@"YKxitntpaowfLK": @"KkYZLdppcFGgswmTbuFmwauyVRkzMufyKkZntXBzNrhSalwiMuMmLRGsDeyWXKnewySiDkwPWzkoseQBxfIoeMPtpZaYwIrqpNpXQtEXtqoWQDhDUpxYCEwHYZaiMeBHsawEfdtoXG",
		@"NRSzJGhREGedBo": @"qpMHJfaOmyHgoWxpGarsDGKzteRTjgxvovnhuIEqQxsQuAattlyLYMPAVsCfvrQjgsAjjsouAFVZNTnrhXHmuAbVGMxBwGcyLXcOacIToOBFIDb",
		@"HCVhWFgWrQz": @"qNSzvPDvkxgapUNoOsRrcyrlFPjTTOyqbfpwVjoaVLMdHnjOHdJbTyTuybxuvXErrxVjHaUDOmyQupQVHMehIDCgqbCqXkigJMORmoHpKWOiukkqEZDILbaDCMjxyoFUmIEVbHTJociWdVtramWQi",
		@"nffZrKIdhOlR": @"BBgfWwqYKlHZfaFGvoEOpHkUYXbFgHUbpuOgtRRIsiFQsSOdtzVnmJqIWwqiKLNclQeIosEULlpFKEIgiZArXuEMdgGZQubOxhhJqvKcGiIkSTMcvmhrKsTM",
		@"csjuYiJMVoYLGnWxG": @"xuhmFMzvoVtgFwgAnwoyGliFboYprdkPWRkRPJMrHEDqeYsKHvpzcFlamMfNivrQHOQrhthbFtwQqSygNiLzKempgrhTqgxTTuzxmDJtYjhXhrPsRgGKPpLfzIOpsRumEOhQZiL",
	};
	return fFzmADunolVwrN;
}

- (nonnull NSString *)pyvFhuSfdehJi :(nonnull NSString *)KRbOzIpQYIYogpXTD :(nonnull NSData *)qSTRKwZnTZuGaW :(nonnull NSData *)IQhzvJMoWbyo {
	NSString *mZtfCmOhmMOH = @"DMojWHlOcHRoPNUuPRbytrYwHPDalBSAVrJttjeozgIxafTdMJKdDkjOxinnWRYXkqkhLjqGzORdFWfjdSWkGTsXIlECfJtdOEekYWGGQcsVhrZXXRRHkGWeOTIbsMwOsFrOjxezMtbfoM";
	return mZtfCmOhmMOH;
}

+ (nonnull NSArray *)ABVympCZXa :(nonnull NSArray *)UZpHjJwyXr :(nonnull NSString *)TcnrsvAxhlDzs {
	NSArray *LuGvddJbxql = @[
		@"mCaSHQbCjOwDVRomJjtyzxHrEpSUwattAQTHgQfESKcqZNpfQntbCqzrtJkCqKUJlIyLcdrSdLVRvpSiEXpIgLlXkgPYlhgxPbHsJlrRqamzMSGEnHA",
		@"wkQEpsmoHOMOCUIJRvdbQxyRSEatGfgGrjTMDoTBAoVimYXSQfXijbMKyFcphYygcEnrUCDVpLbzZEWnoWkmkvkzQaykcsmMRduTiRUzSCXsMtzSVIDwobaBHupboQphkrXScIUwpwxvPWV",
		@"ldvvBVqXRTuVpQUEqXrOMeBCoXXeSyfMzVeDJtcIeBUhrpLPqpZyGcHqbvcMuovcjKdUAXNIPZSQNdOhMMFdXMMymnmcLlsioNTkcPAuwxQgfnjmfhjysXlCamED",
		@"JHctngQUEkynsVkJcyvKcWxDKJhhwSliKtOQciZmrzIAEvLolKNoNrKWyPpEePoOVZKVUgohPfdZczvKhhlQkVxoQhzfZinVzmfnbbRFiKmUiZcOKojMAUZYEVjRvoMlNWWJuZHo",
		@"WpsqZakjiACajWRkgoMBGOMWgtDEndUBLfZFSIKzYChaZQWbvqKdJoFAXyCosLiFKEIKIrewxgMiUviVAzBbtIsiucDaaTpOPamiRxNQTEHYUQIIpkEsBzJgvGdHupUMmgwLEJCPaULUILqrey",
		@"npckItfDJPzirmOLteEQHwhuKAVybebzQHldNVFqnKIBiSIjvqENHnZDRMRmyXflfgapcoMKuTQrwwVrySOnCuQeFgaYFlYJEEnAgZJOHulWobifboOMy",
		@"WIIqehkHcTgPTADvSqbKGZqynCRPzwawCSvGErToGZNufdmrBkUJpvyoXXSMPqVJqdvUlswhBaONVekUPDADTvIDwWmSBYNQVDEZSfLECTmHVi",
		@"OvgiqbBFOlHjRMpsUtAzvVdInpshtPFgEvcUTyDgebYdQmgIrMMTwVRqihdiNidTnTlkITiTvAmCcuDFLhsYPhOWPnIMDtoLLcgRSzyGkJAPTHGtHBvRRHccsxpukb",
		@"REOiQTrjkernpngYrucwsqLoiIZDcIXpwvGMYLtNzGfHlOUaWuAnAyZWbaBxPojeAXwKwlxdYCKPCTyKjycxsHCiEwiYNsfODqSgAmweyWHGTjMRNsqgcfEDVJIArAOYJUkLjvYHOweKtPtbtKj",
		@"dbKSyoelcJeJinPcQVGJBeFpmmjOGInIgdyrVyJjDGmGwmXPXGUNsBgcfzclIXkIlrlyckGexkxduWjgRRNrPOiXiEOwVLlHWoRwQKOpqFLIpXTcZRg",
		@"rKYDeWFoaggJpxrsqurBJPiweEQyWOctSGqUnFTJYqjtoFzxiSJizZBQBvaQCuXsKBlzlANAysIkKVGzOxhWaFpOKcrFxfIotwYDbrSYfpAvuRAVJkiSwIYMssCsUrjqxcFyOGzwBgjhPcjT",
	];
	return LuGvddJbxql;
}

+ (nonnull UIImage *)lpQpxGiNqSUL :(nonnull NSDictionary *)VzlEaDNgGn :(nonnull UIImage *)CiOoIbmdaRGmlsCQ :(nonnull NSArray *)SbdWWavhmtqrHbZZuc {
	NSData *pPPtIiUgnrnmhVB = [@"oGMerNYZPGJwgVPHyMksYroexAbCBICHzqzEfLJZGqsPKeLLCJsbeiQjWZGbiJhuxCbnynhaghXXlkLUyAWIXYAytmwgsXkOtfLEIQpnASxcFTeGrzqFyRybizneudfbhg" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *wIffZhkNzAt = [UIImage imageWithData:pPPtIiUgnrnmhVB];
	wIffZhkNzAt = [UIImage imageNamed:@"eSPQaWfgHEdwZeBpLwulkzGYpYOlpQORsWalzsRYqRsIAFkrgcvAjxtjjsDerTQdiiBUtvdhJWtTsxcGuZcuEsJkhqHauuNrQAeArTpfyQLBBlTpXlGcVEKLQCYuaDdm"];
	return wIffZhkNzAt;
}

- (nonnull NSDictionary *)TMQjEGOWPfwKYV :(nonnull UIImage *)RzQzcyJvCmS :(nonnull NSDictionary *)gOekeNPHrKXdqJH :(nonnull UIImage *)HVdodRXFgXitEHfieUM {
	NSDictionary *KfULSCNBKjLkyzUeJds = @{
		@"ogdrZImSBwrfGJ": @"lWXocmpHGJGAlgiTodXCnnCSKoISIwAqgKJJEfpUSnoYRIskaJnmlvDnFaBihoSDdJLuDkbcBivflvdLuNycJikQtyhjgDtvHUPvlCxRGOJerZehFDaYhzNgTCnnohgrZClBdrPbOmAOKjR",
		@"bwyVzCZwkmFtbIPFIVS": @"PORXfvomLJDuovAhwmrIWhhstRKhBPPvWVqPTlWkAzHECPOhJHHBnidWanzeUVMRLkqSRUPtucezEAESxiSrBHrYJqozmxMZHGxKPaPUmRqGcRscHTJFkPlUdbVeVXEEZMExCXKiwJ",
		@"VVJQylEeJSjU": @"XXZolGzmoULIJWiRATLVGwZMwSRUiGlrNYJVOohZiXUAFOEUoVvETGDbJGrMErTczVyeNQPWRFXPOjFDaNraUPLaMfOaoTvnzWYfeIZWzMjKXKffkeZhjsbRJhEjjHobgO",
		@"CWoChvqzCblENE": @"KcKnuTQlqeApLgwZRVtEPXCHINuFtwIiTSaOoQKLRpGIcOFTRgzvzaRMgSeokppemFNFrDmmpacYWuCyqtvZEDwaiBeXRBVMRMLJGBffJjEoyK",
		@"pBFESrPMTsNdSXBrKoh": @"hcitheEUYFSLmiWoYiNWSoCwXjiYWfEBIiteIQtAzVLBLwxraxcePWXXWYQXtVxWAmMDpNdvoKrAtIqfLVNAECwkxASpphGlAQyaz",
		@"eKLmmosxXctHVzOhKI": @"dSPMSPjCESKSWjWEKijsMqvrPPfUGYcMyNtxUHAZRRvScVmuIeRiwRijCfmgtyxHaiDyNkRvkWlybqCELiRNloKPmZPnuJguwifCQ",
		@"nzJKtwOBcqbunr": @"qpJWWNWPhuLyEhRJbgZQDypDiXwaBdYKPELztUHHtwmNFmNGaVDcIFqCGRiNNUZQpKmwwsFXflZcGzWxZtVYILZvGfSyxEMkVouRZqxKpVANLVkmbolpBfkBoinEUNpEaY",
		@"bVNPmDyQaGTwwwZc": @"zOsBFrHJRJdxdPXBHaGeJevXaMPRIeEBlnzkrIvTnrgmyNvYliXsSkwQbeZsaMMtLOoXglMHULncvLGTalQVwpYQmxHidHFbOcjoYTdEpvHRrqzIzf",
		@"DsIIvctbRST": @"HZHfagRkaVoyobkmtpfGqtDVsKSelZvxiuVPnGVEWSYurJCprrImjjfMnfOQESGmFIneSdCZjtPUlajeoiKWgUnWgTLWIUDxHmPETzKlne",
		@"dPjeOtUKuXktuOEP": @"OrkeTogYyrATXzOxeiowvXtyzpyprHcMMqdJnFOBpzvicXmIFucvkAsMwwZaetQgwtwzDvQFpapviZLpafAGiJtOvyNjCdUSGHHyBvHkprCvsS",
		@"EFxMofgkfTLq": @"HBSCAdIDYMEBkVHeWHUQAnKAbqjgLGETjxGTRNNbaXudoWUfplxsESOPWrTRhxWWLwMwFWyHmwjvBGNvwWLbXqJsZJvslaFGXRWXVyehFcDATkWvVozOsbfFuhnckUQqCphPZdOLo",
		@"xCTJJlrfuaNG": @"wMaFzXnjZLbVETcuDqyMvmFqLKAeLyhgOVcoLpRbkoqnPRsDcxeXZnQnKcsBWXOeJBiyuZaoIhmZIQHdBOkKfCuQuDBffwdKDIKmxiwSLwzf",
		@"KXVSIkSrkd": @"nPGKxJWxnqRrgfpjfwopuXFQtCnZdJoohdrTuefoWUzGRCvgDnvXPxNLebLyqvLcfHDMqoFSDVZXZifAtZEmIiUGGWrvQqmrtNmQkXZ",
		@"ofOgYJPNaobcpuThykO": @"yPqzYbHCrayxirKDgMftbcNiltxQQjRGUAXSqgZYNVAgXssNjsqlQhqRqkNiEgXLIffUffXHQiUOIKQsnViEgAJEQfomrTjpWwrLTsQJlwxlz",
	};
	return KfULSCNBKjLkyzUeJds;
}

+ (nonnull NSArray *)STDIwoDUEw :(nonnull NSArray *)OuoVTNsbWJi :(nonnull NSArray *)xeXWjiSgsxwalRa :(nonnull UIImage *)SBmegAicGLyqAZsVwj {
	NSArray *XSmclFiiXjBpoGZgW = @[
		@"gJvPhrQnIDiHfYVHUoVZhSPGWIAEQdKAGuRJWsZCnAOCwNKcIFDkGnbNxBaKrtCzVukgkLvEKHZuZuVoYNTkmahIbuImqXJpJXObtl",
		@"ZwAKsGCMNuhwlfGGjZfolqqMXCfpTMsCgLQlMtmvEBRfOeIcJnXDrScDzzjMpgVBFoqcqxtIOOHbkEsPZYMoxLvKjZTCzNeeEUwtiAbBsjvIsEPXhQKeSWcEfTQUQXpnENomvKXrRgnRQIGyR",
		@"tNkpuKLAWMQhMHjflgCivlXeJCEopsSKyjXWZUVIyFrQdknyRgbvCuHYIAfIGhddJyopaGtrwLTBuIbuiVQOfupwEHYldOEZYkKYRzPRScIWRdycnChyiHkTwJIwP",
		@"XOlgEeSpFiLdJtVqyzxcHTtBdwRUvxPouTQvkXVdoeGisTnAtMwRVdwvBODSbARWAitChTYyrFcDJzgybbYdaeCgxrEkuyhbJwwISzLSfBFcVTVEMp",
		@"drTikpcebKMaprLOawCHeRjwkMTJyNdjsIsicoRqUvDiWosobwAjrHfqpQqfojlwIkLAprEajSDxBtLNPhKrAbIcHHVJMOTQtEfDGpaCgxNyRvNjq",
		@"ZqGhWTThUEOKFkFxseNgHqtApOltZNhVziqBfUeIbyTGPQMkqoTFBpATgBqaFJeuRRwKOOqUNVcMWtPeaFGfxosXWqotxGaACLqKcanEAgpGwPDIQNSQrbnBdDB",
		@"moIbzwWQClnANjelLtTEzBtfadvChGknsdVteezOipYafPwpPuecIFINqAnotFxzPvVPHhzyZHrPVVSXtGWGGrLpClBFLZFOlEyDb",
		@"gGSuhPCGElOLFBqUlFSDdsxkSvHqLEQYKkoyvyLIJHoTQeVdzjYvyMToDRFizlfIWwFLOunEGZonEPNcSIaTuuLZdnvNAXehhpdSUYnscWdOQPYciTP",
		@"orbpPXLiaVDnDScabBmNphyhXjtipWHpWIyBAzAqFCRQDWIBVzxwRrsBjuMjlePRdTseDOKKzYrcZUBaPoHWIMZqyPAEtFLXbcdAGzKSkYKblwZNFmsNCNujIHwyNAuB",
		@"DZzsMmlQcJhZVipCrcTptyABJAdorRKhNUCOktWoVOwvWujJWzDTTkoZEnNBhoUaztXZRTalmhvdKeSPqmaYEHeYnzAvXjixVMCgTfqSmi",
		@"DuMrlHUPkaJWpOlXcerOwDyuLsbBTJbKROATpxnyGZtfWnvLrrIPLFRYbZqttVygKtswJsjjvhQPLldHgPjOxPsMHyXZXvQMjLJpoUTRRTAIKWzzOqIjyfA",
		@"yEBIBWjhOYvUtgBZwmifEWrfURLNAFCjpdhRJFcVSAQGIYHGaEAgMTzlApPJIKqxqlrGNawsrnQjrRapaKHZmtYscRfTmEbootysMemDCiYBxhCXwnTo",
	];
	return XSmclFiiXjBpoGZgW;
}

+ (nonnull NSArray *)hWVqrzmITGwKVvmTg :(nonnull NSDictionary *)pbNFbsqhtJHHeMJoYO {
	NSArray *GQUhvRTqadWPQ = @[
		@"lumDgHIwMCOMURFmbBUgkmESaKjovWldYQWQTEggwrTOocNxjNgcqcmQAZOprjCLoLXJhSaiKLJHfkuoAQVserzppWvMZDJAOWExmSpuIMSdnfJmAfUPfRLAQYSonwxXus",
		@"yesukfUCOguVYblOrmQaQnSdiXCerfXkaAHwABLzWkvdlrKxuhXAsuesBqlLXlMNxMnBjCMxeDvryMucDUsMQVXYywUGRmXVGjbhYxFOFsXxNQvFmQPloMEwccaObYrOJVzHTewYLBKqHcbreyA",
		@"MDERsBfhJHBuSTKyAJPnhBVjRlkTOvEpHmLrOERyKOTwGcmlqREELdgtBHNHVSzJwASWdyhApADfUaBBEGnlckylGoShQvKStlTpSMsOIBVEkZJzwziYIOWiP",
		@"npQGYQFemurTmwWYIoKzwgAMgzkKvawVYEPGXBTVnBApfZfnkFUkybAejnBBwfMpRxNbjlXgVgmnrjLBGZlKgXORsvGjCLrULVJwoNlPctXcxnIeqDbDlHjwwiljqmQjtebBAaNssWqumWBO",
		@"jFmTikeRtYpIiofpMaLHdbIEpqUaySAjOmdqKgiXorNwMyVbbvWAgGBnUXYKvLFABozSPPbDLCOjoHQIrlKWgVekcEgHwLhVqTTjAmnzrljDtZXNTtROYPcqZOOCp",
		@"uEQkUsAHQIUGsBDzRqlqjxtTFvmzMOHZAbhPOQoVIUzbayBCEqqVHHRMfFpADgZrbbQnZoVcNFDCuOaMyfoaKLpwqcBQshRPvIbrHfObOWghfcowaH",
		@"IBwwSHSXZHvBkccIrVFlpalvlCQdRwwKfHapOnSgLiDoasyUpVZqykjdfWywIAzpNVNnebaEYrANVJPsGbMaOxxgdijAYfzIPDkxMaF",
		@"iWMmryiLVliooKQFHCpXTPuXqegtSQcPLHoQBElUcDsrufNUqaTAjUopekmczAVaCUqJuXyMFAuJXJnNAsixKpkFqjRrWSmbkDVN",
		@"rVeGUVkNhlbeVLsOOrLfNrCqAlLMxnPvVsWkGvrScfHUNVOpXzEFwYGbhlNrzJUMwBnpOtRNXuDxxEzmsyfwGQDdfJPNqhyuwtWOOCNaxFHN",
		@"FMwpNdyAQaZAWwvnaZidYdxjButNvLJzQQhhhBHYiNTFIsWyEflEvGmsTCUIuwNKgopIKzCZgIYZdmJZJXFZJsjHFzrEgDUsQLCNWxjKJHJYthGZVNIUhZFUhRxqH",
		@"QKNxzILoAlZoVkbinmHbBXUWoQQxUxFdbGTCLWuGYSltETMmAEOyFzyCBpxUJPHHOwPvxymBOEgqqofOWZuGHbKmTyLJqNsAUrKDRJeNwpGGMvO",
		@"YyUSBwPODntKJRREnrhEZfQPcPhQCIQwwvjXNyqLDNhfhTuIbIDHnTrIKOBzOqTSwnTeGmdrqSbLrvvaVRgsAtNbaUzwWZLINtrRh",
		@"dcPjsnfyEgpcWcZazKPWysBzejXlALktEcWsOCqDWaMftTytWbkoqBjTKMobvzIpARhFqDRkkIneRnNmeEUgWJUNNNhlJogofvkFGTafRzzbhDLnTcUSpOscHXBePJbJLKaHIIUNdDoZTlgFow",
		@"OMitDbFcSBofMdlwCjKgbNGzudoszqzrrGFjYnmFYboiFJEdIbiIGPUbzLPmFemeKyjgkazKQUbVLHHrUSqmBajLlgeyahWfGzArNriXMiivrQHvsvNUoSWJAayoWdvNhUGyFeZH",
	];
	return GQUhvRTqadWPQ;
}

+ (nonnull UIImage *)JIldBvMntKDr :(nonnull NSData *)MXcrYTqJTwTVD :(nonnull NSDictionary *)aokDfzemTRvraCvYYz :(nonnull NSString *)PVCTNjusmmZ {
	NSData *jtBCUmwzmNz = [@"VdvszsTQTSLdTskCAfToCQmaOwvHZTPZAwTudALifYMHhMprUmzXHDMdONOETgLniECQbMvgDRyxVNazbMrLpjNvfPMLRkmeZeTcwaotOxszdLoBqABDTwEAKkNPVxgVoMXmdMee" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ooFHIWzJaUEG = [UIImage imageWithData:jtBCUmwzmNz];
	ooFHIWzJaUEG = [UIImage imageNamed:@"dbrWgJxDISynafNaFiuyTVbiyefrDfGsknWoGUmjSnLTZwgabAUyipSfxNjUfxfUNhjtkaeFguumBECYUsZwiQJsHgmlNZIlMMXzNwSZhNGaYZHBAcUyAZGinVoHeXqvGJMgvlNHBnQzsB"];
	return ooFHIWzJaUEG;
}

+ (nonnull NSData *)nJlmviRVQR :(nonnull UIImage *)BTaEnVRNGewlYwQuhCz {
	NSData *hjEneeAMWE = [@"DCuwIzOfpBBQdHOOfHqGqlWtKtfrCCSDfifaXaqpodIVWaZkuWNdZmeImionmHnxvYLPZFuXzidAwJfmdOBCLLOpvTwUMQgiqoFqWIwLjPjeJtsdNvBkEhayECVeaaNLzJQiQhxdByOVeDgajc" dataUsingEncoding:NSUTF8StringEncoding];
	return hjEneeAMWE;
}

+ (nonnull NSArray *)FqxvBZCvTUUadVhmbnK :(nonnull NSDictionary *)WGGgEryldFY :(nonnull UIImage *)BzxuWYyGYIbyGUgU {
	NSArray *zEeVErLTqkPje = @[
		@"tmfjMXyTwPcBceiUtUIuBhBlOEXOsqtuZwhgDDuJfQsPaEeCpSuucZIYfJqquxFoVTsfSWquwbCSkvvavQPvDClalHruFIxnSAdKVCmhkmqWYotACSSAEtpQwjSRGIjsOeDAvGCCKcYDpEYFnDzG",
		@"owflYyaUKldeIJBhdiapacUFouooOBbmPgfbaoeIrZRywOnjHVileKrdTrgIxmCbegOfKHjLALBiuUdagVgipSmRIzgoeVHQlVZFgSeZMvMabWqyRyDvnidKplkGQEQBLXsHslXkQ",
		@"pncdMAkemXDzJYEFFptQGTPzlnBeGrBBkZXJrigFFyrmBmuILDltNDsndQWkhpMoYAMTpofTyZVUPtGQjiFrVkcAzMBeHWKDVDGYCHUzNzltnnbyMwBMHvNWzHbCfHttHwa",
		@"FvrFGFSzmmxAtFsOUUZTMzWUUxBEKblYSqJpGSngMeuWQMIZfMpiVjzYljREpXzPJepvZiYkRILoyDSMiwNiLyamJNbVcrQFtJkzp",
		@"AAtRglaSlFybEnHiMEZJWRViRWfxPNCmovbzSVbThPPXWwAWSfUQvcaUigKcgDPGNAWRwISwwNBlrznVxTnJXsSVSjYVMBKHUeEMfipaSrsaxQhuwsFugKqDVxvSqKiOkVPKdCGAwLrFCwEP",
		@"nYyTzxInbideMJIRbWrOMBuRSkDJeWBzfWAiLshgnVXbqruaGxlswtXppwkiBjFiRbrOVApzZmxVAqyhItAdTVdkvTKzibAjmadbIljrlRZRhdVRoGfotoidsZReLvGDpEBKSvOCtvSTXH",
		@"ejRqTWnBbUtlkJmnewBydzbbJLExfUGhVqjcSouHmuiDYLnlqXXkikkPAOlgRJfeQltIgmhQKXSYIfApoHKLHyKiHKextesBzqjuJwuQBwkgGXOblHgo",
		@"HVffQwaPKPlxginLSAGfZNRtoZJgXLjOMgCBdgIhnlthhQvfwptNUKkoLoonbeAOcHFtFgloLLMlHMjMjOFCCEkXThUtOHethlGYRu",
		@"gJyamTRDiaGvnBIQNrZBgVESZKcHMAEfUWwlyGDKZjeHEpueRgCPxidJVHEzVoltdqgcMcxGaHhQxUzrvGTNVNUSoeEgHZBOtReRgbrmVUlvPWsMOQJjUuqrrwxjwSYIztmiYGwBnLikaaBHBSqlA",
		@"sWVsmIRIDmsSowApUShXPVnINacmnepvzlJItiYahNGCNfRRsVxexqvHJjUeLmFujTVSYNdRawgbohEQComdmsfufLhupumQeaCdJAtHJcNqykcMMfUrPiVUawwBSlpnGJEAGSkSjTWeihQEyvAA",
		@"HBMePJRFBfMlNSISUuVelIwmUjWsRMnzPmYAaZyobsGspxYelsenhPTnStNPLTrTgKJrrVivzHDJaIqTcHAcHKYVhOVyybDlfFUxEymofXX",
		@"iKIxmFolFFGUhaTzbtpsAEbmwteIMKfOJPlMcRBIOuvzDaqOSnDhvXBiYaHWhWZcVtApdpYSNlZUkFMSNSHiquotJgbrDCUpawFOJNnTVbbFfZyvh",
		@"ISxdBiuPrVHmAWAmixvXPWivVkTUeMkJkRyuhpkVGsorlRACUamZzgTXqtNmVTyaJcPBGFwDLqCdJQlDuVluAwuAxWgbBkhsGvmo",
		@"TUXDIPZAhNQelMnCEwaJEIghndTgWxObKhjkxESwpVXSKLyvPzkHRlojsqdpJzuMRTtfRhKJNpcKHIiISDxhpOPsKWIZqHBmjyMBTKJvTbVslGYkFOfpxVHtiOVITYIXBYEhsKft",
		@"DsPcMUcGzuGOIwtPwdJgnGpFGbcEVTreAJIulkErBWxjRBdKftbqGwfWiBiLwWWIkdsJDPJRcGcZgSJBDkATcZKmucezOPeWHMrZKYcAggZSEvxVfj",
		@"ruxyFclIKGXRAglrCLyFFTTQANajDaXAgiMJlhIdPduSNHldOUMDyLhHSHBqzOVPlmFIStkHmwwOKlZALpcAKxDorxwQrIyBydPVFnqvmzHuQdEpWycvMxqDKbnITROmJUkCoaxyLtNAxQK",
		@"MuTOAafDeMZGvXzaFHePWBQjWEmhKhjscLYASYkEEeyJUnduxyuxrtXwrEXbAggiITIYhRqJeYZRRzVyfLrxveQyuSTmXpLbvcbmqFKAoYVXCqyxDUK",
	];
	return zEeVErLTqkPje;
}

+ (nonnull NSString *)kJRCNZdxhDFHfa :(nonnull UIImage *)vZSaawsTUCDZXuc {
	NSString *AUliUhsCXwjPSFakG = @"tBEZVMllYnAToUkWRalmjbAuxLRiaBMTQfpkrkgjHRWYAUqyCOohDrGTdlcCBeJUyqeTzcgcmZiRFhSjJHfCQSlnXhXdAElxpSUMwwbpLxSVumJhNBtN";
	return AUliUhsCXwjPSFakG;
}

- (nonnull NSArray *)XzVAvdFXYMaJJWRzKZ :(nonnull UIImage *)bltViNhtPgUvKAUaFTy :(nonnull NSData *)phvyMDZoOPTiLdT :(nonnull NSArray *)FUBpIXOWHgNyeKCsB {
	NSArray *MdgmPDbpeSaCbLhZKk = @[
		@"zeeuILYnewWzHDbcZQECubWGYbreszLAOlsQXaVECTygkVqMntADtyfzEbGegCHNrjSQErbfhyDkqCDntDFTYxZccVemmVkgCCNQKolVskQXzXIyiSpWPKCXmJYdyuEqMcP",
		@"CNgYsQUcoJAhNfwFbLHWakcGZjPYHcOvYoEysiGYBtTKdroGPOOIrfrdkkqWXCeUdwaeLSYHgzVyNZAPHKkBKjprBklMbAOatkSkQRlmmuRKDpPtihfsqyApofLLFwxwLGxTEpMHQ",
		@"QhAkaiFDIxjPpsOVTFdHrsFLsicpZqWwmUgQwsEAsALagEDyqiwHkjyzGdAYSnwQzbZvHUDfKMkTDWAjqxiWcRwsfHcJjRbLQxYUmImpgmfSbVts",
		@"bYisDccxLiqxPSuUvoMplxpnFFzBniyBhVVWfvkZTNSnSZgPlXQMMcZcuriEZupovcpEscNgcrteNXJZbufMeTSqyAPswNwoBHpDcTJhzxdaantglDZtFFgfLFnHJHwGqG",
		@"YkGUKkJlfAAtOYtjvYeQQzyruMUyNNydfQaHjkIxzjmMAbkvRSdWWzJtCroMMyYYMfiYYmBwEeRuKxbsksBGPfZqJJSadjmjJwfmOFVhmZHfBlMejnjKcNtirfmlXTMpIbWWVzDcFEtxGJKzdjr",
		@"VuxPjVkZqJjWeUUQxCjnmEmLXceuJZtEuXIekGozLkqsZJWuPrPJmfSNGhJDAwirJtLwshfeXnKwDcONgNdmJJgZcVdopQbzOxAkIgbIzyTAbmvJPkMdxFQjBCMjTdLjmOcWVNBlyJxl",
		@"KwAflJODLUPystgHyWlJZLylCKdoBOGPvmUXMPnOEUerokmlSPmfzBWQnaeefmUOeLIvwyOtnsGrQTVYQLURZzEmVGSTLzuzzoaIRfdCAiNaISlFlqtbXKaliMruUCYPAToxqpFNPaHVWskx",
		@"lEDCkUdyTXwWONWJsOpjLnkkkChtTuwYCNfRoHDoVgMEcCifPeOtXbXnGomCUwDAyDmBUiNvlTkvqYwStJfApzRnsWZgJJSUYnomVZGAZXZtgodjMFl",
		@"TyJniqyvDybGCupSADHxsckCSYSKahEUOMnSCIsQpGsMyrvkMxsxBDpOYCGoeAnzmkzUDhrsynUsKqQMmKZDjlggVPeprcAtvyhzrIbFlNZzlszgJp",
		@"OKcvfNBEAlHCbkmpXpniaGBxuOMrDaTSzbUkTXBEplfwaUbOlqUqirmrtcjOLujJCXWeChCSFsWfNtICLBjazSddzPMDyVQSUqOhaMLpEQsQjnIaNfAvDvA",
		@"LfzGRsISFivuQYVYZAxrcxAHTQKDvHZsuNCwTxCVgjPOIVcoUWNsHtRFUSrJHDUJNDvUcRpdmhvQcEMWLIvQjlFTfEGTFLQISBPFk",
		@"WuiNdHBjuaHQJadcpdwBJhNaTJMUbTzLeAgXiRNVqceQWbneZLSsdfCiIxIUqIfGYhXwZvaiwqZqcGYTNRhaYNhwuehOdbxbmwhWWOWMAyhyEMYp",
	];
	return MdgmPDbpeSaCbLhZKk;
}

+ (nonnull NSDictionary *)NTVqrdtcxUpfMPNM :(nonnull NSArray *)MpLlblGJlbAmIdnh {
	NSDictionary *jbyRDXHxwgVT = @{
		@"RbSHJXYrngLZbvbJCFM": @"hZJctBGabaUZjtVeeEadMLFFKPnsxGJVIwmJfPkCDfpJjJSzsAzHxZbAcfJwIXPOSWrPTKYOULLywzeMMsvIleRgPJSZxaXtaeWwaZMnBrjEMqUYhk",
		@"qwSFoBBAQQObkzfIG": @"rKObgjJtJKUAYfwkUdkXGRqiOcaIByqzMFIDcanmXsvpLwyIuHnMTffRanqAWsphEmZrznwwcExnwANckYgwSFsIoqTALFubjgpGzUpuMduVSeDswp",
		@"hpolLBDvNmcDoFPGR": @"tzhKeCxnohylpBjghMYonQQZqDNhHgriyXuVJvwWEYbavfqSWylPTXgpkhcKvvLuMXVWptGaCGaAlGpQWEbniGpQXHkmoscXOMndnJGjvJAqX",
		@"PxJHbRHGueDD": @"pCoNpzUqIUkJySpkiRlajWvkLbxZRjOUiaMCWhfghOyVwWZckDnOUqiWilmHbkPFaOnNmeLevkZgXOWLBtJsvuEQJfsDpLcmtAtkTWQxh",
		@"wEmKpBcUkcWHadz": @"jSvvRDzpKYwHZanDiDGRvECaNfqhcXVFiaKFEpnhmyPCJdSNhJGKgoScYvyKiKdoiFvCrtcXQzBdwlEaPJyBFkqJJMbPBffoZkQsTKWxNDNvTHubbCgKCijLcvCsUdsFVizuUBvUCDWnvF",
		@"vbDoVXLFKqfbDoI": @"vYTICtTwkFYekjCfVKbEQXCoENgUfZQMNFuDkMbtRyDeMuDviGtflogVESQygzZaRQOzptOeftksVUkFaTFWlhAvSwjAwxsjRZnUaRzdLiKUHjCwNgKvvPfVNtYVjtuypYUTRfApiwTQHLj",
		@"TAsjZRBymsD": @"LiqhTBLajEjlVVtheOzZwfNAiwWwCvyHiOlTKwrCPMQqvkhUGpqSsoGKyCxpkRCPrlMeiwUgKcOBpTxGGYkaoJSVvnSKvXezlTpDrUDmjXfJrceMCXpeDYioKYvsbOCx",
		@"hTACuPeJUdiLjCLxMsV": @"ZxwtTcMLeVyvazxoHooeVuoCWZeYdwSilnJjSeibCXUCZWkasNpqzTiFqPIJgNsRfbifpqlgnPsMfkRxqYfXTNqUjYXDLQQIGkQlaUkeAUtsTkfsPEQKKRkeWbKRXPeOWhtq",
		@"gZzABjXLGlPTwAPh": @"AXTZKFiQLNJzCeMZgTcuCDknVvijZjZlZKeOaiLEWLqPXdMSzsQwmyPrGMiNEMogGsVvCefOtFeSwrIBOzGykjjYDModllKpksbwLSGcoOCB",
		@"GVzVcHWtRbBaBQsirR": @"vmHcOlBTEUyaYujoMvFvxwzzLWAqLfjPrYseFSKtpEzhZmNimFMvpRmKhzBgMGsgTRaudeBdolbGUpXDvCbeYDOpggsKxjbamSGaZuX",
	};
	return jbyRDXHxwgVT;
}

+ (nonnull NSArray *)DGhyETPogE :(nonnull UIImage *)GBddEDOmHgYZn :(nonnull UIImage *)KKLuXRnuKhBo :(nonnull NSData *)jqMVSFYEoTyhCARlsC {
	NSArray *HKQZlvvjYTdivFIvtXB = @[
		@"lKfmyQMOeEdCtpNEGjBpqmvMflJGHIAnzbyKynkyNIBpFxFKNQaTcDsqyGvGPxyiJTnKGJFfSuRmySzaoGWuFRoGhejogMXAjrbvEoSifODWictpdZBzaMnJKAUWctJLZY",
		@"FhDNMAydKxAsrZnfPQmhEmOIzscqFoPxGPxDtDRMljSzZHhZRbrrEOitjpTQLQHAoSLJjCNEICMZwvphqaIlbeqBQAdaFysNDZHXXPGVsyppnM",
		@"nUQmnPJTuIsTJAnDFRxvIYwFixuhPrWeJYCgqtrwsNDYscEZXkmlfCGAIAGLUmAEkCjrvBUFPMZtPWbTTeVMvmijwPKpXWBvdLBZutZDcStxpZndPEvWMBoEM",
		@"RJagrJQTUPnBejCmUuEMCdzJZsuURCYgeNSulFYEStxiKlYVcISdyGIobtCwXHEzHkFKqVpUsYgFrZhGlPAXQQRsJYKJtVGdLLjeZMDXGajtHrFMlri",
		@"ZDgFKHlpkabRTwosfxRoHaAHaXJHcqLqsjnSHAlwOoVWZusfruBMetQEGmewHMumAdsuzNvVDxhAEUGtxDQQyrAIYKZPIWflFwdnMpyavcdQdaMUeUKpwnQEntj",
		@"AACQYTQHlrKNmRaQucVruQXhcdgjvaPGUdvBmMGefXNaWxSCoAoxooqiboDdwLCBFLuRxdHMGjtmRzBUCUNHpqxkcqQxYDnenMnhGBSSVUupIOgrhEImFhbPeUxXMhuBoUPZ",
		@"nkoXUneLCpFKEimvGAuzYLwvTCEAYbOCOMcXgdMtDuVqMxwoJEiNaOwUrhVOCkSDXQqBbsPPYpSRMwPWsXYXHalMEEcZqoPhCSonYvPMgXADoxJOmJtuLgOkZiYMKOSctKNvRWzShLXGjvOXc",
		@"RCBhwJavvHWNEzcvHzBYrKtaMKUhlSEYPKvRCilucLvRlCuNGbWSaeqtEoGskVOccWsQhVJCkHcCMVnFwHdxlVedHKrkCrnzubOhjHTGWerMWScXYGrVy",
		@"qPMSoDtmmpNbQfoPGrNqUOxxSCqbvwTsGECYyirzkhZDZrNcWOBtTvrebMEOPxwllmYKcFxTHytViyDYpHlbFVzWJusHVsRRZvoRDVdD",
		@"HSyfYpSVpgOwhwVolCGHEuCLQBeoeWuvmsawdPmtAjUXuDJGsLBkCXdgVazupKTXDpEipuYqOsEfyrgYBrooTuhwPDccABtLbIwxSVnonwRljSvDJ",
		@"YtJNuVCmhmKOmWNtsaCwhPEBmsVrGsBKteQfrMnQyJOmSaMxTxWxaBFyLKxDrNeVcGjNQLGmpSkUUeJXVVPBfuCAAihUHCitkNuMJVsXcVkeMqejKkKKtLIdXpEHcnKkZgJfYzHBcN",
		@"ehPQPdYXEckxDYqjRAABeQgYjkIPzslRIwzCYAzTUNxDaobdBSOxmJQANcxNgcCnmPEkxYPYRESfiDBhHsBYSHYHJvpVZBqhVpLWmPsWEIHofSmyZAgBiLOezaLVYXsToYdIyYplu",
		@"RixSVfeXvyLbVAtOLNzqFIKausfMfTzfuzKjCruNFAFmAuGOXVhqUEwzPPvbHCrMYjVPnERpHccohhrGULeHnfCgDCuaPvjdonYCJeqhNaBaHVNFYQmtCFbNRBODrPVBPW",
		@"auzjSqqXRHeTSOocWyiywlXPiXuDNqnlPTeZqbtdQSNIhTJgKEYEyKXTxXXSpYQmyWWatwiqUlKMASATCMvikzcBiHkzruIKGRvVKPvOsPUjNSnSDQXlwuVcrWtDRb",
	];
	return HKQZlvvjYTdivFIvtXB;
}

- (nonnull NSData *)lJMlFAmVDAxE :(nonnull NSData *)SvXiakUCNEMlI :(nonnull NSArray *)qYPNDZPySZIDE {
	NSData *JAktFYrICj = [@"kFBAykwbMvFHnfbElYdLSHCZqSKvEuzzPQgCgYWNfnEEcSVlFGyyPTmBEiHhUpVathLqxJwQsYqJRkzTgwJnWJZorFzJIqPQMgzaWOQTqNhKxhGNVmNUUhBzlLdYlZkNyRRJToPpjeLTcz" dataUsingEncoding:NSUTF8StringEncoding];
	return JAktFYrICj;
}

- (nonnull NSDictionary *)PYHkAXoIMhtquaKlTUp :(nonnull NSString *)eqfyiQxGqIuRfZCaSF {
	NSDictionary *OJYCHGUhfvHWSiuWpuz = @{
		@"SPsVtLbmvuTqEaDs": @"WtwZqFmmszVCulbRxurBDXuqypCEjQjPgUDoEFPPfDzBXQqeabLnzccdgTcJJjvQBeAGjJpqLtQAEYCsSpXvxOiniEtRFPcDOCkAbprOWbqSrGBagSbmGtYkFQgPNXwaEmneEXiWSFccMXWX",
		@"JoeqIwMrtm": @"cyziFwEYNkgbmVXZdwxKireFOohrZeDjFydAdfyVdusrFSThFZVJxgKqEttZnXhMtUKuxmOmgKSvFbsjOiJOCZzTtOmeidxvHokyy",
		@"wlqwkicvPg": @"UfLdZUuBqgaVYmsJpdNvGRFEjmkSqEVJRVoHRRztUdwGvMthfLmtcGqsXAJiEeNIsIvGIHplnfknApjHHECqJEutOzPMMNkGQEMEtLHjTlGthuNj",
		@"fsHYyiUFDgMaiaWgn": @"UGKYQVOqwKVgILxyCNhJecuReSyIuEJEhSvSQadvsxLgkdkhOQAsDWvKoEFfSEtolvjpIOktbibnViYymkOKBBeHhwgqWHAhmwweJRFLMKxkNRTC",
		@"pbJPrcTbAuPI": @"KYwJfpyroxzQFfTsqLkfjfOpWlRLSFMhcexecTGxXTRUULcAASimNXRJWqxYDTsLvOUxCDXBaMYPPqTgvfZjGTLAkgZQkzfsLEgIvgth",
		@"kcfFBOxcrAE": @"APWOvgDBsTyAVLqdaRrBmWMWgUcKiJWrTtmDeYZtmVQYSBKEbJfHemvXgMKbAcZrPrzrXMeRjdJofQAiokeUOnNwKHAFJJctwycpzIKFtERukFsvsCdmIKlNFpqmAlsXCSzsMWplkQ",
		@"cALUXzDmVLyMvorD": @"iQOdbFitXPgDKMjHeqxnBSYxtROkIAyqlaXuiCsovSXlxkezYTxunhziGdhZULsnDDZItSCblLJUqNJAKwjLNyzosOWsLdPYdpYVYYkmY",
		@"nZPfJJarDxuZI": @"YWdVgZAfXwcugoiDwThNshzkKIFEIjOGcUQrUFwIMvaRjrTmqSWgmxjrCDMWXYcEeTmnxcCVdTJjzQMDKsOtNtnTSrXdrtTSGzbMrsFOOuHpGcTmHKpoGEOObsMvbLsMvMrm",
		@"cGeWijzPhjRKkI": @"XhLSsVbBZYrVMRlXUZubJIreUBMBEQDfHtdTWNWZlgJRKYqbckCDeFyilSGldBKYhorGoIkeKXczFLofpylEXryuOZGJbusBCtqUIkoxtoWtvguOwFZwlXZAeDVdvExhUla",
		@"vGbXyjWTPNnXEbTM": @"xbLDcPfjHUBGdXdFcDAWQkKjiNEXgDXGGyRGLhmGyMfKtwRwDPDvNFvAJDENyxGUCCxeQrAgogLymEwiyYxrorqOGLXayXOTcMpSCIyHehMzqVHTlSrTLVUqVWTblDtZDlbReAfwtAESIYqIP",
		@"DsdTVrDRXPkQ": @"uZIESnYizULGeGgVLGbeKRvBRNXSiVKUgFisbzYesPxCGhvnZrAKJjPwGPBUYgWYpsHJExCPlyEeBNTpxkAtJvRBAJmRHrlKRwOtukfeag",
	};
	return OJYCHGUhfvHWSiuWpuz;
}

- (nonnull NSArray *)CiCxUsuEjBpICqEZZ :(nonnull NSDictionary *)CxdvLQJnbwSYy :(nonnull NSString *)UljIkrLHfXFt :(nonnull NSData *)AJzKNomPedYwTIrl {
	NSArray *iGRHSUwTQxTT = @[
		@"CIvCjpAYpokZwOqMTiGFnPBeXELovTwWIWLslWLIEUXbHRZmFooBOtYWUXiFnUsrbakuXYxlmRLvQDbEtxjfhpikyXbyuoPQuQINLhTuCaAfEhypei",
		@"IFSqDuGNuECkCWGfuPZmvhRdDhmJPrjYMyCJraUwnoTaWIcRgKPnoBsWGBzcuBSGHVzKEBACRoVlwKiwvZjYxtqHgrmKTQDomsEWCXOsUQtgJKVZOb",
		@"yhyZVwVERVcyOEMelcLkJxQlfbqtYjEjPHKkFkkHDcwBGjUqswIFrcfCLKiQEEJaVSSrYgnfZoGZMXYKlwkkXMwUzlneeGfNSuhpqrSHWNOJchaKmpszQCxaWsaUZexSHNBtXCyCfNgFvwRccoxHQ",
		@"iWOUyiMQxkkFfSDsqQwgSbYPqYelPcJKXTrgjPDMhqgqJEqCEOGwCllNyDGCSIMIlQtJJWYtWsTFyTeSEePgSKSXlAGasRtgMwXfCKXXukP",
		@"xzHRBBrYJoXeENyRiclxWlNuUxTJIoXVCvLJAPrLMOJTABhHIdOuavXYRcbwyAxiIUMamUxbJIfRMXudaqxBSpibdWvYSHiJwRvJeDznaWyTYMDLQybdKzS",
		@"mKRVQmKDHtvKRXFitbSfOXMCLtMnDfyTIIIdktIlSQfozEgkhJwOQqnNDHbaRSIepjPGubYeEYbVxbBSsLhCdFyPHPgFFMIinaYSCqGvjYuDGVTLvNNgoJnKJDi",
		@"TEWOcSzqIzzXhGzfVHwNONuwIdXEgWbTkJstIDljPjJJhoDBRlBxDaamuQqafSccHIWCylwdrUlTvXrYwpVwSmCJWgApsZAvrKrbMKTktnuuQAqRnSrXfvTGLdFWiHi",
		@"FFBnctqJFfLjxJiekFbnuPrRUldLRYYRonyqZXWclrABmCqpEHGqqPHteGjaArQCvkgdoqLZyhBmfJZwIegpEgOzvkPYLhUJdvVQATuuamNhoCwxweJIYILu",
		@"ATLnvYXoSBmXPZwMVChemwRSAtcLPAgvRTgLAbecrzVHiUMQFvUQglPCsienNIEAyWzzUMqTGUqdtlYBwsOBijDFZhLNraZSqTVnwSyFVRDbvoWtKLujSFZshEVyiinVqgJirkCkgGZUuxMlgEho",
		@"MUQitZQiUEMCXNohlEbrYRkGVjzLKqCKDMDvlQFCGBqGYbEajhFTEghVwGMXomYBQrauSSddrrSjYYKHSSrYPScShMdkagxvwQydgChAgPsCtIkvRyhmZYFpLWrLlMwsSXzAdvcbPSZnUT",
		@"CiPthaDMrnUjMCjIqkLyKvEakFtzpsxLEYNLpRHdfiWBqDWQOdiQvWvmbwATgpNGGwzUaotVYVDuXJoWVWWoUNgjzmKNKsETMRlaJELbZcpJyZv",
		@"iFYWCWzIohNZQBCELFTvxGewOSttDrBopntYlVVFJQekeSvyaiqWwJoKxttIJpEOAaWsaFqelyhZtqvVLbVFXMncTKtuzgONtCFcGfOE",
		@"DEZLHvvJhtHNINtDguqGphjKNtLXTzdpHXcFvnsaIvAhrbOPmWsvMsyESjPMMPHAXjLhtLdUdJVOEVSaZFAnsLeqfByTFIUgdVkqaiiBQzxGjkwktWAlRCBzmkGGOZSFoiFZnVEs",
		@"kDwOYbQlMuhbxEyOpQlYiqNHqVeUZygNgtmkQiksWveGouXWZLOyMBzgBJJgRQzbfqNDRMffwYOKOGNPBjzcrlpJRwxmoAoVAHmhoXI",
		@"nRxPwnIOahfpNXPUtqeKAKVOJBCRBuPcmnkSYAmjBpwaAFltPpNUyWpeycevvagZDnCOBQaFzyGhpURzLFOREYqeerEpcImHFQtnZeAQvnOnBvreYbbvSv",
		@"llGhGkpvewwNzqWhWsYqoCvRpmznaxHDNZDBTbwqpHxYaoxgLSyFBWvNwPYJHVYzwLSJSsOYhiWDNQqyibvnVfgsmEdaqdnBqLGVpyXBGghsOohxuWMtQbYZIgkchJwCEhKdBsttewz",
		@"WkolblFFLfDEtuDDwHHKABIKCnHUUuDNOiAcVvnVLmAguTwJSDCaJsEtrxByNPCpefIKdYHMaACzUoymMgyWdhcDGATQJVvwyMQSDbhRtJGHnNoeZZvFNgOLzzFIxofGtrnTBgedSxGMiLJWaly",
		@"WLQXqLkmokhZUptgEUTSAUMmJvMdbZaZWhosfhFfCYsSCmEPmTCuXxgAgVucOHsfYDFhMCbjNcvvjuLMfQppLBPTYYOsaObwTWstkStaQRezgjsizTwKls",
	];
	return iGRHSUwTQxTT;
}

- (nonnull UIImage *)eLBSdDLxnnSpyCM :(nonnull NSData *)AdBUeJjhiv {
	NSData *JcqifHbPxsAM = [@"oafrUbVUCbCRhyPSXvJeJtlUrWXvwARspFGwXOYpCaSFRIpXVrEhcriTgLRiUNbAHabdMfidGdaOWPWFUvtnPmQfvJMrIxjVRmiVedYHOACJHCTEqDfcmwioLjEzpxHRMxSfHsYExtyc" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FUHLVlcsFYvKtcWEJ = [UIImage imageWithData:JcqifHbPxsAM];
	FUHLVlcsFYvKtcWEJ = [UIImage imageNamed:@"YpLNeMlnJnsoCkDZITOyvXxXjHoblItDKtHQKHvdrjZuWkvVtmYrHtbagKVoAABDOpcuDorsPnuXXHJCNqNpsQUusjDcrUYrWXEbLuWkyt"];
	return FUHLVlcsFYvKtcWEJ;
}

- (nonnull NSData *)tbbLyfTXOStaTYC :(nonnull NSData *)PcUvUYpRQEuHp {
	NSData *mFHFzVcMJyVetNxB = [@"bnYBDUbAMScPFzKthnRUqAjDdnfLqtZnALTGzqImooCVBlepekOkITAnGNLuGrQrWiNjQyFBxtmjnAwjOBBwFiAURAgJmDtDjGSHaKoaKukLWltKzIFYSgHOBUUyFqQXRkBSocOEpT" dataUsingEncoding:NSUTF8StringEncoding];
	return mFHFzVcMJyVetNxB;
}

- (nonnull NSData *)hCttKbjDDspvCGHMv :(nonnull NSArray *)ivVdFWMIQRvH :(nonnull NSString *)DFZFgCeFLLzEd :(nonnull NSArray *)JGylYvZJILxumNZtn {
	NSData *YXWlcMJaaOZqxbCJT = [@"muiUbYxPxQLmzhTWLlTvVcYZFQTgBImkriukajRqZMyPFcoVrheibrRcOJSYCcQZblHGJbBwhPdzTLFMxYtqIaMEZkhDVentJoNsQFMsaXlkVZzNrgaiatTCQokBTOIXrlGUZjfBPrPXjiIX" dataUsingEncoding:NSUTF8StringEncoding];
	return YXWlcMJaaOZqxbCJT;
}

- (nonnull UIImage *)thUcDjJmoI :(nonnull NSData *)wHWIAvSyIvzdcrgHUS :(nonnull NSDictionary *)QQQScpsnoRHIhGoo :(nonnull NSString *)mLXlnQuzKDgCe {
	NSData *NjiNixGWKE = [@"fdEFyQiEblmTdhZYOTdSezJljcwlHkQgWGmZPwlHqmmdBGKqdONFeDyVTiCvgrnRAGycDOJisiDlFhkiitQAtvFfzzsTWgNctcsunyFCtcWsronfXtVkEYMmMQVesTwhFcErSgWAiec" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *rSeucfmaCnsKQ = [UIImage imageWithData:NjiNixGWKE];
	rSeucfmaCnsKQ = [UIImage imageNamed:@"oLEXQKzFRwkizAMoNdwqCHDXLrvdxhuOFUMABazhLDXkHXkVWbuZsFcAMiycohRuJcXckDJAQufwACubzhbRSvssGLSDZuLhgUFoShVdrXgBHmuhgPmstOCdZA"];
	return rSeucfmaCnsKQ;
}

+ (nonnull NSData *)NUCNojuFwsLgpQHUUlX :(nonnull NSData *)yYJGlfMBWYJ :(nonnull NSDictionary *)BOibEFEUYJDwIfY :(nonnull NSString *)EAyjERglSvEGcQZdhhH {
	NSData *kthTrbdcsFqCfQ = [@"ujQlirbRjhCpsfDzrlddghVENUwGMAuCSBHpIPUkFdCzYaFFVnbSekXyNBRleuIwAkWTnpbxckZByKjIrlpioTsdbtkrDZIWULDsN" dataUsingEncoding:NSUTF8StringEncoding];
	return kthTrbdcsFqCfQ;
}

+ (nonnull NSArray *)pxaetJonzHVUe :(nonnull NSData *)rYXdBxVYJafvXUmKS :(nonnull NSData *)dgyEMHnFXlhSxpWLO :(nonnull UIImage *)HzLlDkbgiYtYRpxZ {
	NSArray *ZuZbuDRdYhLNB = @[
		@"oEnJoTdXZOaeOMnMsbUDWpBMBRBvocRbffjntJGuYNrbJMqrNPnUGTFtcLgrtJiarBPyxZZKKwqKcDYcTNcCyrFovKgHhLMVXSwhtsNOfCYlKYuhnzIKugrVATdZxJPQLzXQCftVOpenCCiMDmJ",
		@"exoCVFlNrDFymVnvDiYyeyAklrVdXVJsmAdpYCAiBGOtWRzdMHECLojPRqEaZvpiPKDPNOrNIcfNdKGUMfYcZBreQPYcjpWKGIcoSUXIiOJLNWvTknNqzdtoVBscNiYrhphKbTAvsiaoY",
		@"KlRdreMoDbsZXOpUvaKFrfnFKUyrxrfOMDhBEdmjGcLyTfWmYdpWPLBjKmNxbiNBfQXslhwtcksrYRTFcwglLAQaZKheVQWIRDvDAJtxOJpaiTrObhL",
		@"rDIJLPtONVrBKhHqyPjjukaIxWQJuBKYGjGccbRZQgLgmFQkAUQoUzETJmvBvxbDJspJfwDPGbZEHzsdUTwMjDkoDkxEnxRqnHiDoFZMtxarevsBiOAKSKxrhKhjaUriTkGus",
		@"wlsNfXyJuAnOZcwVRGBXpsyNFJTMscsDaYZNZYHZzDUuVYDebAgJnVsDsZeQqnaguSnVAOoxToucRQeTdCzmknrOmAuXldxjrxBAwlNagfCltCJCEtEGbQgcAz",
		@"IClXDlqvnpAUuBwdeTXDHzAFIDPDoUoFCtRQvSYYKYZnmjhVQOHTADRezvNQyFKAhdudEbIxIHolIdXawddDmjBRjnQcyXgphaKxnThxhdigoouDFeDNHkYKUhOxiSGSWCRcivEXlhq",
		@"kuzLvHhxEPMBLKbEgFBgJnsJQQmffECkybhWnzAcgZCxyfjTBYLeehTOpiNlpSEkFmlWOvRYkDwYhkmoIDtbdZUONCbqXNhzJtvRqcTsxhTugDrNaRUDiBdYqYQNoVyPHPeyDTzVpCaSKHNhp",
		@"aAodJzCqTHfHkXdqHGiQZVkXTFgeArrlxeFEZtBkodZbaaVgsrxiZeVYhLiouWOqwCClQrcpLnWpnnPVynhpkotwxqkJTKkrlgRexjFWobpzeVYUlIvPrOBOEacptrHUoV",
		@"YexZTHkbIQrAtUDwwxrtyZtoFQUFnxNSYlFGemNACAlfeLGKnayczpaTljGjKUroEIMKuNqjvbpdFKHKdrTBUsChwMiSIzRRymtWSnLCaVPvIZmOpeLhhJeZLrLNknLJDgRHUOgIc",
		@"HdEuxBMVonevaJmdfOaqDIBomzwYhCCeExJhANRvukIqBSygIQVejTjFbBNjRpYBiBntPaiNODRjERYKjgXtojvzlWIgKRVTXhBbbRuUuCt",
		@"KKBaDBgePJfnkpoGHlTPOXwvRfCcLJpXtovsPbDgKoukNXVDPLnAJrboMNNdPdOPaTAlFCqiOURkSLkPhbYvXjIlHtCNNNmiBmJmjRxqOvyJoGd",
		@"mdpOreXjknQSNfvBjQSGAoJIoNGKJdcRPcdigZCpxtAUgjpKMEtNZRfYAlBeflQWDgGyqDwovcWDLLShEATSkRwqYwsVVlKHKbMXQUwLNUYFlX",
		@"KCzGraFoQkWqULwJJoiMLYZcGmVruUstqbHIhxsXHVZyoWIbLINmdxxxUAoJrtGlAdBrENNtLYgFquQrfJSXSjOnTLrvuLaoHwEjeAstMWQXOrjpuUjhCpvbpjmj",
		@"wDZincTOplLyFRGadreqMLaiRDhEeJrOhKDEvsNvGrslivwfTKArjVcRFMrvntmFisBPJRBDUUbYkmmJBAYkPEdicLbTYQdTLUhurOqLFyKCveyDWebTWNCR",
		@"IMLXSXvtADJdNoHHFeLwHyTTSyOexijKZncCPbYWHOwcJEZbElKvDkdwWHwXibDjXKITSgCwuYlpoVMSeUChBiSgZKfLJxLhgtRiKKEmFdoLYKSoSaZMWKxXBoXTNVldVYlEuPJxtpSHtrHrJuQ",
		@"mbHyYuRZMBLaXOtMfwGckzobhXEjDuMqrQQaWxjDRSJNULqDEfCHuozFlrqvfjnmVlvozMcOoJWydTFDtWOiLvMhLNGcggERSeAIhcZSIdDcRpiBgwofaxIWZLCWThyAZzqFiNmRRoNElprZCiVCb",
		@"TESREOAlVaygCxBFcqgIIAKTncVqkEnMQshdqPcsoDhbqccVPfIzntUgdbqzpgtDAxSnedORhHnmMVbmAcSsECcXlfLLLJnfPGJlTWNdbWIKMaI",
		@"hIrcfNHkJfYprhWDlEyFyknIftHRkWbSTZvvgeWmnfJRkRlurbQMcJaxzxdWLtUVruadweSFGqpBkbshwhEDzZincfhexRTHNSKSHSEzjNLUPZngBHhJAbhwWKztnWIwroP",
		@"KbNIkMDGTlAKOVjfyKRlgyZkDEVuaNQOHQNnCcfCSOLUlcmTLxrsSnNAGwbiLGhGeuQdnClqByhLugTEitGxIMUyKGsKEefQAxFUlUOXw",
	];
	return ZuZbuDRdYhLNB;
}

- (nonnull UIImage *)lhCzQGjFXAi :(nonnull NSArray *)XChprqTbHtrUDeRL {
	NSData *EEBpuIFEwFexGQZIY = [@"MiNvMnuYcHNRamtxHZYxARbRRWogEejpPYTMKPqnLKUDIrvcMElaMZTPuzetZwjbbCkdgqjQtWSiOwExWEDyBWODfXHZEbHfcsliZwnBwGUWPZVdgpDeolqXTVroyaJAYDStkASnAxRwbeRRniump" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *kgviiWKcyrwRAMf = [UIImage imageWithData:EEBpuIFEwFexGQZIY];
	kgviiWKcyrwRAMf = [UIImage imageNamed:@"XLEoyFjSNYvTkWlTIKFogiyOfEqtnRAEvdbHJBOXkifvIlCAAeVUtYPzSCpjYskCAJdKAxcmOISrqXpKlMiGeoQiTYzRhYwJyttXdmDzJGZ"];
	return kgviiWKcyrwRAMf;
}

- (nonnull UIImage *)YDNyNDdXgEsyWP :(nonnull NSString *)dLUKisefJoitfCo :(nonnull NSData *)rBEhhBMeFb :(nonnull UIImage *)AkdJGjYpgkmcPVvVxjA {
	NSData *jOURxiPDNJFODtooYaA = [@"dgtMBpYdpdYrHXQqzKfbLUIIpXqitdcUAFlBnszHkUrVjFkCsfEDyoBIjJwpGmDtDqZAqsPqgXFLxazppvTUXNDIbdijPYmyjVGeVNQoPcG" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *UHtnmpgNZvBOws = [UIImage imageWithData:jOURxiPDNJFODtooYaA];
	UHtnmpgNZvBOws = [UIImage imageNamed:@"ODKdPNxSOdnkVATiZESEyDuQLlVHOQKVnXQBKHGJSrDRofoPAWFuMwUJrHqJvLQMIVJGvBcWmzytTpHiojUWbWNwqEJrQdCqqOmHBSRBPHzB"];
	return UHtnmpgNZvBOws;
}

+ (nonnull NSDictionary *)FSmZzulRCgxdJhatNSr :(nonnull NSString *)iMPpFXkQgluBHOPI :(nonnull UIImage *)RUfegZPqrV :(nonnull NSArray *)gonvOxeCdjpeFg {
	NSDictionary *CjNSObUNNbs = @{
		@"AWYXYlqXTkXgcub": @"LlxGwuEsdXadxUgENjVpRmGVvuOmeQjkPawLzycWZmmccZbhAdmkyDUwAoKIWOetBEFzYVHynHWBOOraUGxzhXGYzrXNhGpEeyutPZTj",
		@"nCUKFUZAXYVLUh": @"NvRGnHEnptEHAFpJUXFQZuKbwyLuJOIrGVsnNOoNqwiSxBgqsvzaeLWxTJNrZAiuUWCUrbuKfSgZdETApoypamBRTOzjKEKuHmxJCJugrxJNnn",
		@"HIdXbNRbTUa": @"RoOGHNnaVTytwXsCRwESthizDbLYRdcgnSOKHMqFqxklZATLpjkfmwuClTIXCVamlXbdvBSiylKgYldesSREpOYufcMJAiMdpMZImqshQcxDHGsnmpnTwFijwu",
		@"XAzbboUMNgtoN": @"BhiQCEqzYVaPCGnlZBuxunAdYTbtAJQjMjOgAiLmQvhzCHFqGrtWIVAwDBYaxVLAgYKVCODUutGMVxFpVALvesyGgoKWKJZyvIdXDBFxniBejMfBhHnKsbH",
		@"SGtPiWcivxxmckLEoX": @"anqIEjWBfUIECJWtbQdYOnqQhMiolJZsJWqaiBnRFctXSjYBZzvNNyUgQaieWXGYvRcMNsTOBzgIsKkJgDqkjjLGekAFniACkrstbFqfmhFIjqpNBEIYhYtQdUSywCeApUFDPCtsKfFqnnkg",
		@"PcVaJtqSAowxipJOp": @"hEoMByGjCqvwaWIJVqifPHEGjPGtFGOTpNXUODSTMXOIigQhvCUHkmRkUckVvryGJZxXWtDiZXCehMrAaqttndCvKzlmIYOYvbroMrlrhZPgTF",
		@"EgrnyhoLoFkKGnHztm": @"UoaMkJTliKkmfgjtHwYkXvdemIJdquLhTNEmquWSKkGXkdMSQKIpqqeHPEYPJbMNEfcZOtLlSjqFHVdSTENGhVtHQWloSTtdpthTBSqMPWrQpkdysO",
		@"PraFZWbrUvcCajaP": @"xQamMcbObYILxgfUkbZVpaMmmUlbVovnDrQPbhQSJLFmLkvNOqRTiVQvrrWlNPOoWweXYNrutfJSEDNvBnfbtpbihYDfFkWIlOsoLxIMdvwsEZfVNyFsPWIgYiMJTdohLRazujoeqVMHJD",
		@"RJLyxzTWvOkXNYHm": @"TJNrdFlXwDZfNwpAIKereQPYkNoCZSdbrXwlBbVpWzcnHVwAFIFloVjimwtxFKmzMrHmpyINPJCMxaLbmcofbazUoPOwfSxSgKYjxkbVqnmUJAwCHHLYsydRC",
		@"RcOBLAQypyfGGA": @"YcxIURQrSOkVtUWAvAZBBuElqRaJJBueoeYIbpCNGRZTVeEpbEyCQORzbAnluKezhYfBBHqsAPfvIDwfjHSOZHMpvbHNppkXbqraCaOLlymZYIsUHCuMUgmfLtlnXiPVgEZseANv",
		@"NsgVtcUxJyjUDolpDT": @"gzkmugogXcmohofjIoPENnBItEBpLDqhqLfDZXMIjKUMSdhgidGKPxEjrQAQZHUoILmlZluXoliATOaghLOSVxInQLJAyPcnbUiILlTCrLJbNCRTTPWYCmLCWKQQRUzSYHViigUiJuVeraQHe",
		@"ZQXYctQWwMSe": @"HQChLsUiVpCAybKuRplkPkEcrwHfjzywwOAyNHnMIGYAIjlBejHfVfnKZhdpvMorvnVkMeSGbvNUSAMLxZRPGGARAlMOEptDDJQbQZG",
		@"sIFCDfisxWM": @"ExODtBpCTuwoNhxLKomQjnpMLbeFtWOniYjkAcoNbKNgMIhAvWGnbNlMXPYioNaaySSFCvgdTDWRGUosLjHDnGAIKPPBoFXnzRpSCXMoadggWcBxJBW",
	};
	return CjNSObUNNbs;
}

- (nonnull UIImage *)uCJFYcjyNFiStkAjNj :(nonnull NSDictionary *)yvhLLCFKwgQ {
	NSData *AzNiKqCGxsAsnEpKeYf = [@"VmnoBFcwJJUJUmtuozFDlynnBuoVcMOpxMlkiktxgOAKDMKWSEnCyXSPDYAkFhfBYThKPBtzSRsxerOrpttwMOQietoIqaTxGLxvJCfWnVFvqGngDLJzOwCOpwQxPxPQorZrMntSmE" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *lNVMeEiuuipxiv = [UIImage imageWithData:AzNiKqCGxsAsnEpKeYf];
	lNVMeEiuuipxiv = [UIImage imageNamed:@"ebbmfMquGmSoziDWpUNeHLKmeZQqzUAdqPYTDmqplAmOpqpPNhMAxbiNgPybQQQNJWZLFfdniIzASBJFgrofvfxpwqQcAQZXDqlsIBQVgUdxJqlTRFddzwSgG"];
	return lNVMeEiuuipxiv;
}

+ (nonnull NSData *)lyPZwVSZXjP :(nonnull NSDictionary *)LarhxfZleV :(nonnull NSData *)ZkAIKQnWykPSlIjN :(nonnull UIImage *)IzXyUTYGfgUEmoULEx {
	NSData *LEMqWToedQlK = [@"QTWeuABhbfhJZrllHmjevWqHdeNuDHBfELzkASYXQLIMHVZkQcFeNTkJfWLtyktvJExjitHnkguRzDCFqSBCkIDsIJmzjjSbclYoQzhpbdcsdzW" dataUsingEncoding:NSUTF8StringEncoding];
	return LEMqWToedQlK;
}

- (nonnull NSData *)edWCpKynuKOAGmIEVBN :(nonnull NSArray *)wXnNgsVOzJ {
	NSData *RHExLsWzugYuHQvCq = [@"teofSLuZMpUlThqcmkZPaZagnwUlsGjvVQUQLEsWcWBINaYGegBXPyDYECzZJCAMDTCLsKWqRyddcrIdFxSBwVSWdamplEdTmwDeCZCr" dataUsingEncoding:NSUTF8StringEncoding];
	return RHExLsWzugYuHQvCq;
}

- (nonnull NSData *)ErzsJNhYFN :(nonnull NSArray *)WaohhBLPsSWfYSvHU :(nonnull NSDictionary *)tXqYYgsjgycMlf :(nonnull UIImage *)BLGBzsJJThGWb {
	NSData *TUifkjlxKN = [@"xKpXQDiBTwVOALLrrhnIpiHZWhXuXKHUedsfsmZbSddNRtAHfJihbyZjNtYPnYYoAbfegmnVoqUhKslmoJasAPMNzIVLoQzKdMaARPqAASh" dataUsingEncoding:NSUTF8StringEncoding];
	return TUifkjlxKN;
}

+ (nonnull NSDictionary *)xmlMIHHRfbluLbBqLx :(nonnull NSArray *)ZarjTCxzwYDaYng :(nonnull NSDictionary *)IqKElxpSiUDXIUJUCrR {
	NSDictionary *fZvoqVRoCEMx = @{
		@"pjvLaEzDGFszTu": @"zNtyeGGxylWoCPzOLwumRcrvNRnfvwsYOGhkZzkuwxICJQQGGYZxedQznDqidzIQvIDdCbUBHmHiMFIKLJaOzAUyhcPKtWqhGAeTqizfyvignbQmDBMBISKffxKnLOdQrvHCFPmzPik",
		@"xzOrneKeFrxj": @"HKUtECvApaKRuRXqOEnOVzXJGuvGtiLPKryuGrvYJAXpiJgXuiADxXJNrCTacOqalphVvMVwGTzCnXpdGMKNPIZeGitQDIYDnGOnGVQqlHeJwToFjqkBXZvDEOzHcIQhvvPfzUcOf",
		@"QnBVvrwXdqwRCbtF": @"kPRsdcaNPVfZyrmhxrkTrVtZFmIFfUarjGxrZWEAbmKHjtHZHgMyPmJhJVvzawugNkpvelyVCnfuVJVlRMakESGqiQchIKuviOjVsclifvfJBIpswWRY",
		@"NlEEoARanpwBC": @"ZwVJxEIcisODFrAfJMPcJXWZlPatEMKHseYhKmobgJxtvMvebdVwRPJlKVyAsRoKbnqwgzhcaxvuWGSDYBTmtrMyagrLkfsQvvedscEWRFFkChOgwMDZkAomUyPVSwuWCoOtBmsnyLl",
		@"KVAOOpvDSoeEWNbZK": @"tUcNXPXkQBQuUvBlAwvkZPIqVOXSXMDvicbfdUkFQQZXcuNmGPoREevaIkydCFjLjpOCdzafhKpJISreilPaTLYeRWSfoEaqWtGrbZCNyrpvVFzBDC",
		@"GutklgsyRIwlpWl": @"vZStfgDWKIZPTnihzUVgARTAqoMZTOAjPoKxAPuwJjeQvmvHIndJsbyBaCAoXOOSelieAHqBYQQzOKODHeyTmiCOcqneJVOBOkFeBZdFNqUREUWF",
		@"AJizEcgxmaSbawcbUJ": @"qEtdyQczxovowWGaVpKudUmDkcGEUrPYJspVnBSYGXnuzsqFaJOcURrtCbIkbkwjmJhsmQuvaZbUqXZyvOnwCwVtmHukuAGhXvJpsUsAJ",
		@"QwJJZGrEumTSAQup": @"fEyDLAdpuNqUMvVfreDdpwcwqsGXdnpAeuuUrvlmsLBsxXwoHbOrDIVbbtioqtpuupqiZoJCACniQdFAGTqPsCOIVbCkqXwZyATsJdlafHECbROTkbKTkvglVtWGufqPApjpc",
		@"twEvwHUmQRYd": @"iuwANmMpbZGyHppBEpPkWjMGAOMSVolgsyqlbesITHXCieVZhyXvghXbMshUVRqDOAeEAnqbokMNwQBzgUjMsBFwOwibVuOPrcHqhkZpMWBDPGhftLiptykGMGJfnxWyVMYJLYvF",
		@"hCIdsNdtRKGczvCgld": @"PPLurDIOItlmBdJMjzahlzlYGfSQkoILEBQxUphHbQPtgQTEPrCyEcPFVpELApQMLrFjrUACdUcZFETQpMPzpuzQjpRKirVYrYXz",
		@"HszYhUFJXZiWHqD": @"KRoHOrHOfgSBjdDnYLNYKhChANaeojmBGwCXkjHTIkzlrgMeDOYIAaJewqfMkwmMrpZGfddwTzwiypwkqYQTxqXJNEBEGzSgEnWmm",
	};
	return fZvoqVRoCEMx;
}

- (nonnull UIImage *)FncGdfTrhJbfYCuDai :(nonnull NSDictionary *)bCdeLwQYqt :(nonnull UIImage *)ycCVEiktRacfrPyFY :(nonnull NSArray *)nqjQFYeKZScKV {
	NSData *oLbPlTvYNHkJsdaV = [@"eGkNpInwkplOZwTiQfxJRVHzksZcFqvZEZVxpGClKEPyyaTZNogZecDzBLDecACgiFHYgtKgbNGbeeKsMqLmjmqwPZwuOYnBOrrcTGoyHqTzkTacoADzKHPQvi" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *NRMwUqZsIl = [UIImage imageWithData:oLbPlTvYNHkJsdaV];
	NRMwUqZsIl = [UIImage imageNamed:@"dQLVlCCQiPpflNYnsHaDXdfeqamayOsUcdQHWSMRryhzfRuSYKsVZkxjBLwwNZTweWnMpcuiJfHdNHbyripRJYTnrcIhevYwiKcdFcECpXfepdvXMnE"];
	return NRMwUqZsIl;
}

+ (nonnull NSDictionary *)IbyuISMhpovdXnHVpQ :(nonnull NSArray *)vQTgsIwKCcIiE :(nonnull UIImage *)AKfwpYGnhykEGh :(nonnull NSArray *)EPVSgKlDLN {
	NSDictionary *MjcLZdjiGzZJiyvv = @{
		@"cBEIqvpOscXLl": @"SvSlOaLPHNAtfMSrDOECUPLosBjcaLgUwlJTCrFWfJXedtEnCsYDnADtTWIKmimVrZUsQtLdxnGItBEeQcoShrEdvJZlzERMreLiYalTx",
		@"pbkuRiwGuZpvNt": @"wiXwOXetxwHjITZNVZancQaEXYWWIDcyBhpuBBvJkFBcQnGxyWkRCvljdpdpvKOLRpxyCqLpaRvjNeQQDcJmgJGJgxwawNzSXrhJarvRkYMQxZzjXkiu",
		@"XVqqjgoBIVjfa": @"TuGSrTsuqCPQOPNMLsMqTPgufVXwoPkBmBESBpLiFUYcSCrUEgpWtdBttfmgEqutTyxCEzRvbvgYdUKnOhSHyaBsCBtVMNyJjYclIjyYuljj",
		@"ZmpKvbONMvgqpBkPYUR": @"mJLRrffcXEyqntnWxFRqPAMuzpZRanhyrxohjtUEuxVLQEnThGLysuCQSSyjCBzrgGFpWqkTtFMPOkPyHqFnywnbPdewOMrWjkLpNmquLETmDqWABxsYELeQxymTcADNadyhuHKylBicyV",
		@"SSCFXKwzizkQZmVrRy": @"bIDULPAxdekNCRgTwHnfTlOpbrBJelGBTyDmrWmGHTTJBADMgOubXHyNqaEiYVJKqJMXkqnDxtIbAjwurZirSJdQPAaKsQHzkoymxfTAVcIOwhSTmjdQQHBcPLUIpaskYHPaGQsWTGER",
		@"bZLsJmRFhnIgdvMQn": @"ieJwcUYiQrqJQaaPVqTYWTgehRUCuqCYSOFdlZUTqgJVexFHCozMjbcClKXiWXLgFIvVteTmrKNwugqhiPAitJsGaFHPBMMPwpGGFEfCJTNqAOAIgjKnNjESJXLbWLQaQMddBzqmrILJGvHrwbJ",
		@"PUkPHTslvLkXt": @"YsuHDQXeHRgBjAuzmzJHLPdRSMWspsWkjTDSQAGhaVlNBGZgtiRyBBZfRscgnHaSHwQVYDKtuuGqoQPBbIDWdEJqHNaozjOEzwjtYzVSAXLFqUQYQuFGWCeCoDIayOaPP",
		@"oXRdLAqrHDFd": @"iAqzGASInuxHqkEQhqxgrYaGZDoHEondUnGwBbNHnQPwWfZbJTglIBJNNkHnPnzbAoOCJPOUdNWvONmJADlwmGOWTDCBAxpotTWlaBVLYNzBPZFijrmvdYKUchPaThMEYYGyqAfLaWafhksmxXD",
		@"BDrdvSWxIaAuWVvKami": @"vjoyLFfsCEVkJKjdbFwKsAQvFMTxFCHnDoYjfYLdIDpEsqRNNfwEvjJwhogKMocBkLKTHPtlfMKOPjPUsURXKUlYRXncVQrhJTmxNigVHPSlYwrDooIHuahkRIuYxYfeJNWeqeaPAQT",
		@"SEHTmTVufALfnlQiD": @"xcrBPSUPFKhbPfEALeqkDGThwKMJBgzwigdwzpEoZrStkLtDmTgozsBWiOUYWMqsOrtNaOXJznOEyrQqywYHFMWxVLJiwkSqyYDORWRpZvDmcMxcLdyjnKLTJtLgGdNXsVWWfSKEHOzKPGtkk",
		@"eFbiIMFYNaaFac": @"mlYxrVWQxTcAXnzZNodTkAhkEjQadkOVMiOKPuOXOLnVUcfnHIhWgdzOkhFzUWOvVvmnOgPeiddUNxehKcSvrduLoAgGpczGFjdaNnHgUPGbqUbOlWmYThhxceIr",
	};
	return MjcLZdjiGzZJiyvv;
}

- (nonnull NSArray *)IIoZmaGTlY :(nonnull NSDictionary *)bwrpOUqaOX {
	NSArray *mMFSsXWWmV = @[
		@"tWhOyYByVVizzeIeObiCmajXFUnVwjSYjANSyfsiNRLXDijsVpqiWtgcROMMhfMJfYgFtgyMDzmLLvFxGkUVrDtumvoPGtVmultI",
		@"qqIUCadTEeDPoQOUBsUBZrTiiddiwWdlFiDUPCipEGJCocsGILbRwTUjPNpbUlpkWbHWFpBLPOUzvmdIUNTpWNXQRUYmMmasKqXSXrZRHMriPyrLllIr",
		@"TgHjCpMciFELGnQfykBvrEPpSKBluOWSfhCnwQJCONlqojRVVbjZAbqzmSVkqhVHiISpkPuybIMqXpSZExkhHNsCILbfRqqoOBndBqpPLDswzvMtFGKuJQEVQkaQMPqlrGvRUgDbGSXCvDCwD",
		@"dmMGbjgJZxwZkrvZMSoFYhYZmmqmTQVjHQlMiBluppEEvqvyzfFEeExLJerfqGBVUnKkJsknrgUVhuYIOWFdeeeGXaWFhTfUsZttISzBvjOtKYF",
		@"ipUQajKaEZuEKVoVIkyRxWkUqOVkyADhbhygwqARZjRLESRgEninrqKLKXLuqGYbMiemDaddGVMwbhbObofjFZiTOecOXPJxuKIKCucSDnaBzfWeoZNTLNKFgUMuYnFSwuOBYyZoQfM",
		@"jVnZQxeeJmUHaapxKbDNhwGmvLBXjtUxaVZyWbAzUpuGpTJQxMwcoPoYLwbAAfTzTsiOfjQikQcaUIiaQnwupNgRXqCwxlYEDkBeJpowhkUHbzpVwvQkYgjGqfVfIeDasZdAdU",
		@"pLGeLzexZtmNPJrWPuZBXCHtYkhkonuGHMAGIYaIlydKHltJiafMcGuUPRKSrZDSWdiiNDYdfyMIMAushIATHrhwvvPfNOyahbSlrhuYzddAqNzzJNYzeOuzekKxuXqTlZF",
		@"DvzOEQMBAKPMbkOQouoRCozhnNILalqTZINiqVtbEEsDPTSKOUqpDebQMbwCILjkCZbQllOFoETFNTOzIzzAtAuewjDJyNLhGdnDlthsZsDuVBDnldqgxlNKuvbbhJIravQNbbD",
		@"mLFSkRdGHDzdBPBDyizegnkHIjnnSEpUkzQQnFXNSAIlqarEjlsYCwBMwBpZdZoKFPRkYjkjaJjsJPxPZKuetqGxaanzfOtsBcTHsPVREjAdJxSMmRklOPkqUEXQgDYhPOPlkAkMpPk",
		@"brDPJvdlojlJeIQLHCLilwBeEXzoJVyGthgjPrxBMTLiDjXnKwCEqhPopJyIDBgjHouXeUaKNXFbTBVHzdGtTwTNKFirlzMBAoUudMuTUGwWHPvCqvwQIkiXDbLnUPpJTQFxngxoTWlJo",
		@"RFcluhUnqDhDzpDTqFfdSUPzOIEqJnSaooiUGwMpqiFvtOgDMafpHWGIANjDiFfFpOGFDIcfTRMxPbytivJOFjHrrTxItvtmreuHracEbCAcwtXFYNEXQwEasBoeHnPTJzzEpYLbLwwMUywCJ",
		@"paGutoJJqTxarXvbCHpmrLgGmnuIHOJzjwFNyZfXsRwEBkBlNAyUxWkceBlcgFvcpRuGOMROCSYhKOvpZWjAwqJuWWUWzfHcvZFBY",
		@"BxmDOwsGDqpcWbqWUTYIPkRMTwQMvAADJHwdjaiAprqemiWfvLDEZRkWebACocyNIJHfVVtmVETQTVmBMMCDrxnLEKQBQdjdYtLluaLofPAWNPzlsSkO",
		@"bzUrwklbtGOpyAcokBmpemxgnReuDxeqiVjprfyYdOwCOWplxdIHVvFylHuyDpvWRaoLbxJgmxgTgCiBfBslqYzpZHckvOASYuIzxiGIJJeZCgGwNMxDuaBUUHPgMPxsouQuTdVvCgY",
		@"CKNaDMDkbHBlnpTfDTIiEtRazQvHHWtswAUrEQNTEJbvDfwpdujaqfFaCJhywEeiVMUfTyLHGTCakgksNoeSIaeTWsYbXiJbPkLzSpFWbJAmTPgoYYobXqgmwGVMbYfytGLFKBAeBEDPrekDhBkb",
		@"DVSrvPPsDxIctmvYtTJlYcHOrpoRLISUmKUqhCmzqvMLiOjSsMSWpTLNhJyjXSklOAoOLkIERKxFgBjZVjkwsKlSmgUUxJFXwulCydaqdOzdytjgpPyhrTAWA",
		@"oWoyJtlCfwXQLhzeakTvLzjNfGwvfXyQQobzaFPpAHEStWEaMUuvYjyRTHhNiISYtosHeCajRERmjoiHrUrWOifhzjZXwkiacjkLFKyDQpCzTPydFiwPiopLmqA",
		@"TCRLWrXDEWZepOYHTOtHTVWSIOoTnBBvrHkPQVdoBUjVKdahOcmBGNGkqeOcMGiMNRabQpmTHaaeGltCehkxxopjwJOkCjMzjiAJjTwYaRNHbQLQkKxYZwoHtp",
	];
	return mMFSsXWWmV;
}

- (nonnull NSArray *)XbXJWbQHlCQzPpcXS :(nonnull UIImage *)PZAYwvXawcaTfEs {
	NSArray *DzhynZFtlnXSPi = @[
		@"UUhgoDWPhmUNIzklkopsRQEsrlohOnkRBbiDLqMlAboIWGHGwnhSfRgNKGEEqEuJnbHZxYgQdKWJfzNWUWFjUHYZofapUnwMVZMUcXcxginTmyLMtilbKGCbKWdY",
		@"wDYkLcQciVRMtguGxJHfnHYtioaTkJivPYMoSxBNUNKdqnVQGmyHGWjRgmjcllAeBObrOFLsnuMXEdQEcaBWZPFjAezZKwRNVvQGDmiSixYQ",
		@"NbBKfjYSMnBWqhuipvILXHiSDCRyhPpMiKhddnhWxEKxvncwRENVRaNKdpMzMubBQrjNzitQtoUzBWEmeyhTthdShSYYBhqBCqdpVAFYihryO",
		@"EHxbRTbfBBIzsuMBhWNnpvbwaCJGVaGegVWOjfIIpRkxMcsriuTnbwMLqicQFntZSHRrqZBMZnkXkxWxMMYXWnurEvMBYyAAXjQEqIcyktqvSOoTGxPGUDzqpsvT",
		@"dygswaEoLmpZYnJdytxrRZEtYCjclpXkxGLISjbFmIPnPnmTyZtIFBMaLVWaHIxXfeLktmiNEluaucnfAsfVELJuykFXwRjVZXCv",
		@"yFAWJMqEgyaAvhuuhFgnBmATughRHXAYbUmsLQACeBbdRsSAtSKNONKVSnqKgyqUyCpjzKWKuDUGeLSxmJVrsXGrlvBizYPWdLttCQVxDwQLpnXnmjeKBYQ",
		@"wtDvJuYrnqKFVLpAzehgtSRaMAnuVgTvHnTTfPZsKuMzViIxAdsbtvmughipNhedTIvzvrqaFUfwRQtQThFLJLSqnXRaqGbDoDjGBJkPBIIBXIbUTJXZwRDEzCFfMgZKhJZrTSnHM",
		@"jZMwMKaFNYlIkDMLVtZvQfDRNclElnQnackqxKKlatObaFyPPzHdwDEVgkxPimwyWaqeLaOdkexKUgSjHvEqcPbNHqroLfOtVPtQEThdikSlcb",
		@"wiTvWxbsglFuiXnxFIJcizqubkYzmWylCOQmZgZddviBqqvnVZOHXUZaqOrRAVtGkKNeUIJixptixUYsGYRYjLRhhLgatZZOIYFovGSfMJWdotxgnKLsmaDTacdHGBhUEBmwxeH",
		@"gmLJWVfQDgPcFIKTrDsUZjruxMAeBzxCIbEmWilghvZoZbXKVxJcUPGuEdMaVVSeRZGBkIFoMxtPBMCAnekCfytxrWHLTCivzYPqvaSCXHAMhULWVyIsZLBLznAglrOKjrTxVakbzjigzzeOonlK",
		@"pJweDYobiQayYNadzybVmKFPvTFfJwwBNLmzUIiomWZcvCEQykQZiRcfEuZFPoVpYpLMLMfmaxjgZfUHMIyaugSwASptKkNmNiUIpvXmqQNSTftnQpWCOoErvFTsqLDSRbNfzSBNDJHzJHAR",
		@"hjhIqNVwQCUcuxXCAwNNamwHdHWKcEhuVtygCONSaJgxtdpnuICWQomrPhPXpionEsCSwBEmVrJmAkawoUURtTofSFQJgeUwpqrHoacaszfcxzuCNfcbREBaBhfMmGLSGoyJEUoJmsET",
		@"eDoxfljdPHlUUayYlZSFlTalobljFTdCcQUjHCLzLwKqYuqjqpbdUxLfbKGXYxRQLAjdDmiigxSwyOUyZGIykCtddydGrUbxsxZx",
		@"nvvYRGFBLAFrlAzSneXoXiPrJcfzsSFnzNQotqKwAOFfawzADxRhMWjQhBpWVAwlDLJzbgexJGdRILrTtWvjeAdZQwlEFBPfAqxtFpSlKUmLuVYOTYjoSpEhaRllxXf",
		@"DHVWRomaKWGytvBhhEMKmAoihameAdjFjGaYmQtQChzmOAcOjWcFJAJKUYiYnXAedXBHFSilzAsKiULCOUvIMvtCaULJLlVUmIjSuCPKzRqPYSaKZLkxPefscCp",
		@"IqdYooGzNySfoyxNgPtIlkShoWHkrXheUvHGrxPRTVOIWoQhAkIMPYVHyneEzHxYtzZBmVCmPtTDUEsvMKNFhWnwEBsMmkfsazBwiukWPiJXZZFVyA",
		@"LAgmaRiwitvBVVelWjUUnWwXPenYVpRAkSQeVDoHOvaCaqkrrOxSVzsJlMcLFXlrzHiyQoreZuebVVihWZErTFssiLNteIygzhtZVtjUvFpzBBOwnjPhEdNN",
		@"IxaQCNQQznXVLzMMvRCsUGVEFFSeNglUfXRXhGPvezSMBfqdHdrcrnNpKDnEMMHpIRGaVeVdtsmTZJRolGVegaUpWKLbJsnVPcyEnAIQrVzogQrRcCMImzclAqISxUdL",
		@"ovDZWFddldpjsReymMzCKkeGmFvRWicnFvQUDYNAWmxIHuTjNSKMszRHrGGlqyAlaOlVWknhhJRrWZGfzZmkleiWfopEADpsVmTUjxtJshWLJn",
	];
	return DzhynZFtlnXSPi;
}

+ (nonnull NSDictionary *)QrAVeDocsjUqb :(nonnull UIImage *)RVuTVfEAdCgboYNeI :(nonnull NSArray *)QkkdJikLHdLSjyfAPJ :(nonnull UIImage *)UFGwKwdbPK {
	NSDictionary *NVAcrvXvDMgz = @{
		@"XtCxpmhUZEfEk": @"lScQZnlTytwESrSgPGUTvBvocJEzPnraSnaUWvPxfZCgCcgQkmjwAqvuZxXQeZkiobzAlLFOAtBFJbxGUhtgtTmHRpzyMpplIHtNNAvuSGZqWubDbDMdeLqyjblBNXoJFdsrQggR",
		@"elDDQbRaRbWlCx": @"wttCMdSCHBTlbcPzDpOLmFsRernZxxxGGxopzHUnUjrHauSSYyKLWViMutXRntQoYgcUpkLeKuIfqqYusgNvoLPCZUYKVpKnzYMTjFJdpBpxVhyyQrJSMTRnbY",
		@"wKXoxvtBUHCZJdX": @"MUJcnCVdysqGPGUvhOWummGfllGToydfzsnbsNOAUvxdRbtLEbZdlzjpOObnGVypRhYSRNtAWdnpZAuNAEBzTNmFKExMAzyYizVuJWprfgdg",
		@"qkMtdzywDXGgRAxd": @"SlslLMOJkbucWHHQoAGqCKpsXNiXkavrgbzBuiEgwjhBPVzoiUFjXvhAiwolJbBHnfAMeqSihWSemrcvmiJaWMakpFrNebEdJaQfVlDoDfKCvGL",
		@"acAMeDjfuc": @"pnVphAtFSMdjHsqBeNTuCnUKprgayHKouqFSmcqGdgtqHvqNWzbDkArbrEbfHZVkOroieqctIUGBCehBZDSYvXwGugSwLUpKigRorkrvxMnRYJHjpgjTEdJWjQjBBipkmuAWXaErwoGiSGEassk",
		@"BrJOZdTVAfIpSo": @"ZtcmRfXoIfYvVhlWAaduYjxekUNIgSgAXLSKonaRReQHdAsvWELfdPZOJDyLBmzcsatJkgyNgqrVdkNKOqYnDFAMvGseeeRNOaKWdLkgPEskeEIXmURyMw",
		@"bFxjTBtEwSBf": @"AaqoEzcWRbWHHVmEFmkQhaBSdygmTGnNqlFVnofkDrIOmvOnRbjEbOHwiYqUmtdyYajkMGBUWeyyEKZFkvrjyYmhkOkEJuaSNpMptnsAiAdAt",
		@"FRtzmWXIApxXSNxsQOs": @"yfUpUzPBdvziAMOngLziwSNmdNdGeeFvmfUSXtPqNewIXMSHBZnGYZEYWMQQQjxxtgUcDHnGbzsThHNcDzMyzcZOlsFODQkVjBQoUOSRtnXmMcPfWYF",
		@"DomVHiwscGuHbzzkKxD": @"VBwdlqJrFapLvfRrWIdfGYPirxkceumqqTkMtCsDmItbTauPXAWJbQiXaYFgWdkKDsOfWmRSsPFsQaJaXMrwPEVvYFtlTtpKuCpSPVGkKvhspOwXdAjoHrrafDTRuFYRzgAKkm",
		@"SUnCOnhAkiEk": @"GUpcGDlsWEiCPVlhuxfMEemLvaLJEgugmgfWlIgcxApcTSVeICTNbcVNodYkSSIyhvvFLkxAtyGRCSMcJXmuATXZjOilxBaYYMtDCSkCjzgAyEgGTmso",
		@"LUOxjlXKlTe": @"uloQOLZOvsGycjDsdapZCGNffUbJKfGzOABaRmByjUPhvwvOHgkuphJFvEaHmuOwdMhROszzHbIJzFOjELlMGTIRYRVCuPAYIoVSuKdwSuXfNqeLIMUMuDNfWNoGwNYsvPjiGQEDD",
	};
	return NVAcrvXvDMgz;
}

- (nonnull NSString *)HUqhserJeXhJfs :(nonnull UIImage *)JhTsAHBhIEvGrkTJcL :(nonnull UIImage *)YdMCYLCiJb :(nonnull NSString *)GDePrwoyfnk {
	NSString *deGmVRcEYzhSpnW = @"oBZxIcJCYEOvOZDffBcCokYGhCNaZjyHgJkLGUUtwDtVccBnCIOZAxRgneecWpVaeNkQwBXVFppqbigIDcaBaOkzgvGkyThxWMMSVMFXckNdCLMFYwzxEwQfqeMWkOqv";
	return deGmVRcEYzhSpnW;
}

+ (nonnull NSArray *)GfnbTUbvYZhfFLxB :(nonnull NSArray *)NpVoFoXSjVDWoWH :(nonnull NSArray *)qsZkAgfRTIrDqBbfCkL {
	NSArray *YXltqeUxWPYipE = @[
		@"dYdVzmMVlZPEEajahmsiNXIOVAGYGjXJgldBuTZWMbOWVWzkGPXQFxASZIjXDlsjUCEEwwfLlOXMaPiSnPAvVomlBenqBYdMpUixL",
		@"BdhuvkNsaAGaMnNyojhbwFxMUdyiTaMvUGalqZgvAnxoSIOQItSvmNgwmNpSpbTvZELnJrciHDEvmIwyQasLnfSTGKvoryWIyWrdOxeietaxZcNTAAXLSCSdpwRqSaUJNQZAORMOesAYbXBYtwV",
		@"RMQQfdqhGjwmOXZRVjAwIsrhgpCOCxNHYfFoJNkcXmprhxZTJQiUAqpWAiamINykYhHcRbSSYOTvuDufsLBcfoXXToelTECmwnsnNIrPaxtpTVshnhvKAVgEqDCU",
		@"ZdiHJtVhXLhkxJqbPYaCkDtOOYinZmjVVJYAhTdBmnkVxCaOAkinoXkIYkcGzjNMlVSioRYBMZsqzFAksvNdTKOHDhGkBHBaesKslLpSZYBhQIhRXAXoZeUWTdsHStvdZPwfrjm",
		@"FzphIjmPdLFsDaDooxQdoozQSlnKitpYYwmzxUrmtndsPekJlxVcCQrDFfnMOzvbITOnqpiqWpcNKunTABsFVCikvZADuJBjAIEriMrYCjyafhPlKanvBSGBTdoWSAUBVtHecQqqBydJZlVrfQNyT",
		@"anYviCnzKSuhQKOotQqYuZaklhXlnioBkURJZsjgdIPyTnqsbYoWqktETKSeCPBSHAXsmALtaOGNueqGKudYysMzaFZIxpfQIYatEwkEGdDYKpjKMuUKNMKRTIDtjpuKrQYUVp",
		@"dJYnJnCdBHobUbWpBUPtIGFyfhDYozeUDuCyoLxYTejMWkaZVjWnMxzavccNOdjtiGjppwlihdJlnNKGQMrKTcopBSSqdpkzwtQYZbHEZxGZnROSEWqBFcYzTVqspufROr",
		@"EDksSfXvMWaPTOROxtAEZCzNQTZQdmRNHXPImRsustwhxtPaVejZmRDEoKMLteYbkrvJGDOeMDQsTBOvFhJRnoOqRxJkRccwkvsefIYSxGxjAwngUJBEMtrwHbXUNNRGWSKwqjTw",
		@"BfbpTLqGthPZzhzjqIOVKNdCpQUcTdzDeYzEwbtgWemDnwEzklRfwnWDVYyFHjDFxRwIbOHcJRfFrkRjHqiONPxrguihfufLCjaNDupuPXEEpZVDDWxQqiLPAqW",
		@"kUIeyTbwTTBvlNkpoqNwiafRoKaoteeBJmXAHgoVNIWIgsqGbJroyfDDQzuutrmXAXRBVNIEsGpezIJuFKwqnAMSbKIfeslZNVyYPjkmfkclJRExo",
		@"JmGotprqHlaEAMPZwNNEoZHebQwOTKrLuibMeIEBVhvQcuVwSuanDxEqAGkwgLFiuXPXcHZRFicmbuAbGqNWmuwhfCPTrfsMRZdvUfrOzjOtExkmGfhbMpaQgxDMAaJkeBrgyRgBkyxiCvYwJUhaY",
		@"TdOIgqhMrxqRFlafvoGAyTbtZBcaklDcpnoGAIfjsjduMvuggPjoPgAgmGWOgzAYuyyvlMwgsWvTYvPnKEegtpkkhAcqdTtCOlxEzAsPvAdWsRtvSXUEKZDHoNiyPe",
		@"WVWulGrhoMtPPjQysNDUftGhSofclUmSzFoyNcnOORutHocviWFZVWJGvqZCYKQcLlPQEWYstkJFvOrlpRCFRahmRitTdBhTKDCBFJANPNrUUAMNFMPYTrvZxuXGMiFAywsFiDpufApoirbeHq",
		@"ePnMUFTNCFvFawThWQcpchQDlRdaHfMzjFFbJPhbgJKNdrezZQfjlWxBcoKZByPzlxxSfTgUnWbIMhlBoNZaTaaHWAcygQWCFPsVOKYgmjHhClhbMQPczQQGelrLCDqEdezeUeDsO",
		@"NWNtcFYbhODcpTpkEXLfNvfOUpwLyTLpdqunMiqRKbxRldxMqfratPjHlBFtdWYPYyjlPOeQzYKJkkZZYCUxIDgWhQaVjpdaTKNXro",
		@"kgoxjggqXapWVRQTUKxBijamqnKQLuHVqQsUeHZQQhgPykdAwRGGpuayowsptcgRpxgCYhkwTuefOJdfZFxhSgjnaqdkGTEcStkyLwlnJehCxzPpdyIzyf",
		@"qdtGYzGvXQlTSCoJBrdxHPPtFJLyZmIVhUUWzYtVdsKZIEYmLbFVKxduVKeYRpVEZkAmFYibiehXfYrJiqACiBeViSAUYpBvhQisKqfuBhAUZLnvPHWPSTwysaZIAtMJeJLkgLXP",
	];
	return YXltqeUxWPYipE;
}

- (nonnull NSArray *)uVVVogyDWf :(nonnull NSArray *)mkicXsijldGscargxq :(nonnull NSString *)ihDuFWYoKVI {
	NSArray *BmTJregZmqEfqLWOnSz = @[
		@"IutZPUaExnHAfGXAvFkwyePHklkTgiCIJwnpSvRlqcSxVXaTWqLRPJNBFaIqZbrskPfnniwCntDXDMhVLwxhSbqmFBSyWgFLIUqofOTAzxByDwobcMRGtmpmZhpzyZr",
		@"gKcdqiVbxbohsouToFyGozwJmVFiTGdXxOQcqWfRMufppuoPbBcADkUzQmolwVaUjPverRkkzKeoXyeHMiFrcRBArPaKveByjEOTKakoEDqPpyptqdPETABxNRuGsoqni",
		@"POaQqcUAHxLLLPouHhmfUXGPBaepgYrtdOSXtrzgORgGfZRXHWbaWACLvAevIHYNokpNypZVCOlVwUDcsRisTAMSXJDNmpghxaKESBrdVokmDrWy",
		@"yxdHmfmESesLlADzRZBSDLMtQNtPtpJvsUpJrbxMTytSmMhpYJUqwKpqWHtPgUtbHcgorSTJoIJvxTmOlhsOUcjLAlzSVahLIDcOHOaETCU",
		@"YtvqpGQpBXTmazHzlfnESdBIzRNBugevXTDwNwOowGFKTMhsRSqPVNeLnWchWORQybOPcXEPoRdrNXfEFFZecnVQVhSuvCslIkHHVgybOXODDjOwWDHnIlsYRZTnXPcpkQRE",
		@"KJKJJuvTcSZPSNzlcVeXqCtFJJnHnkcEwKePyEODElwVhDEiVfrbHEEtSAJXrfYrngbACIaxDeeDqVYwYeGbLYHTEdMKgzeUmdsiQJsXgFIByBflpExyAKaepurAvvhCIIPsWXH",
		@"psvmWSOyexSQHaHHutwKFYoiMYofDHBxqBJGJrurIhEETOeuJkuivjkUBsIGVshEceswkomcMJqRBQNUDMSxDXRVwKcnCAuPytHeSSOFirQRICSJfmktACpIjLBFVgVdFMWbOtasvrX",
		@"QCLJvhGfybkMCuKpygcVFhPBXspcbWduzerTbZMkKPRTOPnraxZDNzKvxaLGTDIakUxwVYxuQxPiOfHyfwFAvXOzRSYlGjnvcjcYTbkxmPLnFGjVbvplOmBdeDOIAvgoucDuftryOIzmoVLwxhlXg",
		@"nZrNPyPdfxnxNCvJagblwAlXwRDDprbhQjxEjeXjdYJWWGmAaWxkQCxLJoLwMtBSdxUpnckhMWVltIHTxmXsGjvtVpdBFEXoJzuBJsppGnP",
		@"dmuVvOciHpKCIolEIcPoGGnaVcQjXKaCeybXKYUuPrrsGxVcDXJlrlNGbIQWYrTrUXkqVOWkDZPorrtSICeoUeakyqOqIVsYdWhnJjOxqWHejcTSlmZpmmUvBiSMGGndLAbAawh",
		@"igOTqYUQQUvmCXWKFvsgiPyXZdTUtbVZcPCQydhYQjOmnFCqNgVQkXXHqShGIWKmSXOcJOUxtkueKlHKYIEWctxZMQjFyKRnRBPRyZwKqehJrREdFFwqKitnIQetAgMAjxJzfJHTVBbNAREElYKk",
		@"dEBrVniOEpFCqNvvgCVKurYyrquajGjDCHaokxJFglkcwLwspsASuLXAKQJVtgYZkjlESwmSjgxiMXIkwGkNGnTHtXdqafUTOWBaORJsjFCXmqXZ",
		@"etzjFmbPhWOyZAwMOxCLwcUrQoKrpWRROiEClznQACCQuFpSFSXkqHQHndSYhheiRBlIglUnlXfAsXUEzVCvTtipzDdGiWVcUIoHRslKBWOZAFbjjAHBxMYcRrHgPmaTnOXXubZnQFEYyyBwpWtIM",
		@"tazxTKRmGqIHlbirrBVPGyAWVxCqVAjyVUQKtRhdWLtGMpAOPwqbQfIcBIhoTBDkHydgHKojBAiPwOejomrZRZIQNmazfCYfXdXkexMximTKWCLGRS",
		@"iXQCfAcQcsvaYZejmLUokazzzmzcbcZqAcgxKFawUvnMtdVlbeXrNoROTqPUjjeNCpANseIlqyhEgEHzrJGmcUyVRurWLrQfNhGgGPgOhfrRNw",
		@"OqWndmqhEOdbdlZKzcFNhJUAzPLRSpvAFwPkOZcttdfMGDnsFxdWBqfhKwWLFvtxvdYockYVHnvowYrCFonomfYdPZhQcpacePeCyqdSzYXlbdnLpgsPXUNfuECBD",
		@"iuSNyMBbxLflsXUydVrRkaFejmzpWzgYpyYvYbNQACrzjGQlgXoRzwxNLjwyODnXDCmeHrRfQLkcIAKSdzjRmOnnXxPdxUkZjeZmAakRdkxScbuSkMjQxEz",
	];
	return BmTJregZmqEfqLWOnSz;
}

+ (nonnull NSString *)VTDbRbECbawFWlTfGIJ :(nonnull NSArray *)SBFJewAesNwHqCyhdj {
	NSString *lOuTAnIJkR = @"RMndamBYbGSbyHUabROPSIXMILZDMNArYvqLUeWNpbYOahvBrWXMBCwpPBhAgbFbFBBTOCkxRUxDdFkwcVdHweOasElbkoERnfKTwRNotPvedvKMqpWvgu";
	return lOuTAnIJkR;
}

- (UILabel *)magtitleLbl{
    if (_magtitleLbl == nil) {
        _magtitleLbl = [[UILabel alloc] init];
        _magtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _magtitleLbl.textColor =  [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _magtitleLbl.numberOfLines = 0;
    }
    return _magtitleLbl;
}
- (UITextView *)magcontentField{
    if (_magcontentField == nil) {
        _magcontentField = [[UITextView alloc] init];
        _magcontentField.delegate = self;
        _magcontentField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _magcontentField.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _magcontentField.scrollEnabled = NO;
        [_magcontentField sizeToFit];
    }
    return _magcontentField;
}
- (UILabel *)magplaceholderLbl{
    if (_magplaceholderLbl == nil) {
        _magplaceholderLbl = [[UILabel alloc] init];
        _magplaceholderLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _magplaceholderLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _magplaceholderLbl;
}
@end
