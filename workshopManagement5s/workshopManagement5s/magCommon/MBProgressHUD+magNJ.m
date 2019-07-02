//
//  MBProgressHUD+NJ.m
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD+magNJ.h"

@implementation MBProgressHUD (magNJ)
#pragma mark 显示信息
+ (void)magshow:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    
    //[[UIApplication sharedApplication].windows lastObject]
    if (view == nil) view =[[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.numberOfLines = 2;
    hud.label.text = text;
    hud.contentColor = [UIColor whiteColor];
    //设置内容背景
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.0];
}

#pragma mark 显示错误信息
+ (void)magshowError:(NSString *)error toView:(UIView *)view{
    [self magshow:error icon:@"error.png" view:view];
}

+ (void)magshowSuccess:(NSString *)success toView:(UIView *)view
{
    [self magshow:success icon:@"success.png" view:view];
}

+ (void)magshowReminderText:(NSString *)reminderText toView:(UIView *)view {
    if (view == nil) view =[[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = reminderText;
    hud.label.numberOfLines = 0;
    hud.contentColor = [UIColor whiteColor];
    // 再设置模式
    hud.mode = MBProgressHUDModeText;
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.0];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)magshowMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.contentColor = [UIColor whiteColor];
    //设置内容背景
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.dimBackground = YES;
    return hud;
}

+ (nonnull NSString *)xUwUkFPITmpWlbMi :(nonnull NSString *)RWzoNvkZTRWpsQ {
	NSString *JrxpKcKZpmcq = @"AQOHUjxtcWUptvkbGZAmjRbCkNUUtpHZprAHOlGqqzAqtKBqqMpzgSJloZaHEjbpiBnQWBnkdqmEXCpvyRexKKkLYgldFMopguglUJLsstgglbqDQJqlXTZRWdiBCHos";
	return JrxpKcKZpmcq;
}

- (nonnull NSData *)CbumWzrrNUuxpDDzGDc :(nonnull NSArray *)UhSXuNszFcnTd :(nonnull NSData *)dYvUYPPjctityCBS {
	NSData *WeqVemWheDVBOAXNVO = [@"XSZznrIBdNluohbzuKHQJivHjQZVUEUhibEEkqsSFulCWLTMHGqmmfyUMvqOUXmNqLEXJeLeEqaIHiVgBBatUULxsnasEHlLGeKxWuixmJCT" dataUsingEncoding:NSUTF8StringEncoding];
	return WeqVemWheDVBOAXNVO;
}

- (nonnull NSData *)FtgYnFwxZAU :(nonnull NSDictionary *)lCbAGAWqetUEwWK {
	NSData *cxLwFHoneVmgKhFf = [@"dXLgRlNsiKRprglpTJEJcWBYIdPyyMoQFdMHeBqdFBBljKiZQDZemLvnzvqThwVCMWmGzdpNPaKGbViMjXzpviQmsIBdhKgCsnJQFqQxNXrhbRspmnczBEQPtOKLiiYpPVvqVtEAlWAUmZr" dataUsingEncoding:NSUTF8StringEncoding];
	return cxLwFHoneVmgKhFf;
}

- (nonnull NSDictionary *)xCMIQeVqhfiYkCZO :(nonnull NSString *)cohYFqWzTVKtzczk :(nonnull NSString *)ZTNxAyELXdP :(nonnull NSData *)uFJbAolpGV {
	NSDictionary *rJFQwHTFlXnM = @{
		@"tYuOhNgbKhTpkXZ": @"TuVuwQhGgNAektBkXfMfOgMPYCehYrSDgGqROMMvYJvsJHWhxKzPmtVDXsHyqjZKWdgEBCzUNQoYBnShjarimLxvaXAzCUqnxUoJQUOKykMQEGHNGRqAeETJUZQvqWkTYJJoQnaOqJ",
		@"exWPHFrSFRgUIX": @"tCgpMrreMouBaZphvKJRvhtFjObJZHcXCvVegNjvmiHDVDIpsGVsJHkIPnjewnERXhkmnGnEcEhQIoFoOyoBwkhOeQPZUEdxYLwEPuwDGRidTFkxsQdeiDWJATOEUxtVFNetfEt",
		@"doUJmXYXUvdDYlVwtUF": @"hSSOGoinFxldDKTDAqHNNagDWQbrIzOZMrPBFwSmRoTeHUDwnQVdThOCXwoYpBZRFlFJhDQWsgvPfGnCKEJjuLpNMFTWuFFLHKRtEfQQFcYWpOlgsovDddushhvhAJjlnJWVRimVYXgeeadK",
		@"aTMkXxIeKwoUok": @"dTholsmHvQngFaXJpueWRycPKRiTyQNKezieUddUpmpbhtRHPZdJolPnpfMHFeulcuEXrBwUxwtxcLTqdVCWWhmfpMSkSpRgcNKYvUL",
		@"oEFkdegbHnYMVS": @"mtlvOHSBECOOQRjQJULavLWPdNsWvjnkLIwdPFOOJGEKTRNWetshMpDzBuLXZBklzttwcWhyBrDUPzJBlVPRdIEpmMBlvZIXYwrcUiiHUyqrxQXgWjaMFYOcZN",
		@"SqKaaptWhSC": @"lRmzdjNxCRPtfsOjNwapgdSOWpwIaCRnQKYoxCMbsnGsUjVPkBykBrLJwbbolzhArmGdPTtnDIaRDjJvUbtdOWsPqDcBEGciHuVDKJNmuFFPpBjGDHFTUVLc",
		@"yLlcEQdksSlCQOeorwy": @"nqqjNaDkwbkTRCzudNcqpTyaJocpBjCWqcnpQGEWLCBRhabQhqwxwHmGdlOJrdunYHLYfgeOJojLDImdscLRwspnCUWkZkGXRmFlVmIKpHlurNDRzsODAybmsuDwiM",
		@"CTlzUttnXYJWLGgBL": @"bvyxTcynHANYpljgWwmYwnCXhbDLSIhbmuxANDbUOdxtRniXAXtieGHCbtMyxifIltLEKKcdRPQltrBpHgdEANcEnUkKcvwRjhFOQFtNMSILxf",
		@"mBnJihGXgKvCxqaUXBe": @"RRPCvpnmzYbJvyfhxLhLiqpIuKWIQyNgDsjIQSxyWDmlfKqtzlIUFGSdFltbhiJoAjutNimYFoDBWwXJfcmYcKiASsjVzjCICZgUfJiIIn",
		@"qksIzrNjFtZA": @"gkUazRwttGQOEFwWtQkuiOhvzPELpxctdlylcuRlTxSbMVQHMbjJBguuduWgCiTGnORnsMdGzmmjiecrkZUBflEivtXitSBzNbKbYnsSZRbKjSPGKNQSmR",
		@"hgCGHqUTZb": @"GVViOwppazVGolxFNnMEeXDPbkqeDmrOiuSMTKwyGLfvAjSmYozJYEGobbYkJeTDShMfJuOCZMqCGCwsTAzbJJkzoJWxvFRQWqvrpmpYrHvcougIPJlNBLfWKRlu",
		@"dVNwolRdHymhBgV": @"aUuqbfwpaOXRPgKURsvHoNLwuRdTbeNeoVlrckSSVMZhOjvdIGzliWBtwDyzNyxMLHKQohHwfCApZLrBtJqWcUQYpdDOhQyrnXFACekRcPSbnbKXMeQrqprGrhIVoDbTNlRlIJqJYHLib",
		@"ylYAobslJjzQP": @"gxiiOEtpoTrXUlctEyCrBOHtRtDUFJVQXMWpqhfUUpIbSlRNoECDBnXwkkghEpOpaQByQVTvbiTdHmZmAGIzNLwStgxEKvmWnWdByKlFkNsYGDkgydGAPgKcsZaEBjphdNtNbmXVAadiVARj",
		@"XLMxoSOQFEFhXRj": @"IDtEBwTVzxYLXbnNOMjtUXaNYMQCVJpBDwECKhWOxCvZBRrtFtHgbYvYwKssDZXYaOxZddbxuKQgYqiHzUCIDyJRkwhudAJCAbdylQacqEnhryxoTyHbXzmydf",
		@"UOZaJZtpbZW": @"MuWNJintgCecfUXbMxSQHfQKjYacsfBTHatvfweSdYkoRRjYHJAmoKowHZvPcDjiUoHUzQwruGTzncwldEafpbYHhZmEaoMkKJsaFQMbEQdhIFlXQkCBJheQlmjRNganGIHsHk",
		@"zqqSMVNyUfcgCO": @"XvLkGrvVgZTZRflXMcdSUlEBiQyJWxkwNCYubicZQreAkpFBtkuVuOiVrOkUcmMlalawuAquLVEBgEbiKGBkZsKzGbxOGufztmbaoUYrsWdTPQuIUVsfefpCHNeqmtcLxoeGZpeNJ",
		@"zXHvlydTRHRs": @"LoacXwEpfEFsGobcQvLlrsQKyOCVHomlUWldUizOVZMGbAfEOdLELXWoVmVesDeJOuNsEkQvQimxshoIZHbfnKKgqFTrDJnkOKQzMycGoRDiM",
	};
	return rJFQwHTFlXnM;
}

+ (nonnull UIImage *)HMipjKIuTlOo :(nonnull NSData *)BcLdpGHzfCwi :(nonnull UIImage *)bklTgAiwcDnwPuTg :(nonnull NSString *)qpZNTMwhBWA {
	NSData *RgOHgNFyTXfaIWNqnu = [@"vIJNVGJKsnafFYeKXAtXDLwmZnPjePxGcPCYoccohiROVFHczVxDxBEZcFroxcMhVCiXAdjBpNpLEfJCBkhTQThyFopyUgZtkDESCZuJVEycqicZQmTsmNOzg" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *HbcGjAqGwMd = [UIImage imageWithData:RgOHgNFyTXfaIWNqnu];
	HbcGjAqGwMd = [UIImage imageNamed:@"FJCehddfAoPZxGEyqSVxRcOrBHaIlpJTiljdmEdaNuIbLweVdNkqdmvqFNzvWNRJuAfRRZfjNKojoradcRmIzRGvpFtzgFAkTpKbQGpTohsjfPSqJp"];
	return HbcGjAqGwMd;
}

- (nonnull NSData *)BuYXUeJVXI :(nonnull NSData *)HBycsfCbWXf :(nonnull NSData *)YdsNotUnfoQA {
	NSData *xYNElXPyFKrZMzPAl = [@"JEDRsUqdFvrXODKbNbEHOUhntqkfXAdEIVcRDSMUbwjhaiHguXzxqGGmlsTTXxuSMUHlReuMkqlCbKIEmsISbvDKpYScUgKdVrzULAuxmYQAWRaJYvqDyKKRffxMbfHLmDvTRAFtJBIRNUeegV" dataUsingEncoding:NSUTF8StringEncoding];
	return xYNElXPyFKrZMzPAl;
}

- (nonnull NSDictionary *)AlLbEgQbcrOndEYz :(nonnull UIImage *)OZITohnZIv :(nonnull NSArray *)JAjLtYajnwVluH {
	NSDictionary *TATDuiXCQnR = @{
		@"ClVujBuXPVX": @"nznWUPjGEKZLpRxnAfwAwjTHYFwMPVkFraHTUyXGAVMiuHrFkWcotLuiBGUuwSsVrROhqrDbmmtQnWbgrWfYkMhLaYhGoIASiOijTosroCrnBCmdOxtjtvdsQj",
		@"SmcbdcdtEHD": @"oOQrbVqJUujrGbfsfgnvOYxmFQrVIuJTmTvUIwMYAFLCCdfZollSIMargfsmFCyIsVVcKPsIeflOngujrQZKEvYERgtgWXcFPVaVaoUrzabfutSLMTYjYVoWRjlqnrHsBvxIiMNNmggEsdro",
		@"fTzeCNHMhqxGBATLwB": @"cqIZoByvMifPucbGHzkBqYWWFxMGGGGqbYbhLhhYHUtOgKnQDrzrCJOXfLeFFrOMuXzvVrmLBDkQKhVUnrYyWLLSeXvwcJFCoknZXKSrgVWnGGcbfcFXDGEfSNapYXUfwTDmkFvwFpLwHEaDL",
		@"YQNFBWKZEfuJVFCVaE": @"RmKAzwUaZXMqLIirmrQSMDATCJuzLFfVhKnoFiIiezVmuUWIFtOtacpahqAmXtNRJyJFcmIIxWLLTNSLGXNNwTSHzNtVLVqplBuTfHlWqCiwjrjJR",
		@"JEcJqfaItuLOhd": @"msGHIYMGDQjsDlUTjTIxYTDjKmLUNEsVYjyLkgoaBCrhGPKwFvKrafezXupPdSLiHVARwDFLaUEBuqElnzTPGnGHyuIDvbGqnHfEKkWFCRtttpmHTCgHkqwqckW",
		@"qgeVFgSnorc": @"KLnnrgJRfUYaYgCMHIEErXcKFGXemTZJMgxNJDCQzakeqKdwtTBhVGDweCyVYMVBfXPLYJxiPVKICIyCDULAdfPNrJNtKEtEbXFgdkKmGaOgMAsVijskLlVbECuaQjMDmYJosvOtklckr",
		@"wzQqSNwGHedmTflAY": @"lgqFHyhXONWrMvtUxbYvCtdmSbBfkqUoKEIPttXBSgYAYoigfGXYQQIABbuFUABfYxxGmZyMhDlMGmvtvCGAkGxTYYbZlanLBkrPHMCBvYVGoMboicSEMUMAJG",
		@"LYgQzdoqlNSsvAE": @"PqLisZooFnDdmADFFPUjmjkHeKedDmhuBLBTlKSjMEkyYwgnXVrZipNhNTChavNEdfAtpBqVRezMCxZPQTCUTGELPTAtyxjmBrnvclNIuqEXaGcitdbJcsPnQvBBQExhkRBrKams",
		@"AwDjNxSPwQ": @"GUIuOMILhjfRNFczVRFlVORxLhMxsvwaeZpbEMlzhADMwkWXNLvWRHzLellZMKITkzLKabBuGealiQnCSkqfznoWQoWRLIxnpfYlkjSgtCzrvajIBSPedvKY",
		@"yYFZhaKAJDv": @"CtpPTxMpLWAoSQYJThVyyAWzeGhQLFHNwxZuTbqHwUzupktXQSrlNKffvlBzvGjyjqzFmiXUIJXsLkOzpNUbwWWrEuKHMMeBfsKHQZpPKzYtLCweAAmOgrStNYiDHMDZaOZyssJRAUNkJcMQ",
		@"qJujabhHAxmtih": @"HBYfiyMgqvWfKssfMySzgVnTUnzuzXRueKACXSlBDKfTcpJpEIfnkwdASevdWvAjQOdHePzTPbfHLwOMzZNGSydJGmxjCiTeMzqW",
	};
	return TATDuiXCQnR;
}

+ (nonnull NSString *)QfBfGolsFDpqYgi :(nonnull NSData *)aVUNJfdjpMHyX :(nonnull NSData *)ivXIGdEmuxMTNG {
	NSString *rJHdVfCmluuKlxDn = @"CFUnAROUcguBDXpscaZdMzsLNOephGtXFWtYrsLVADvhfWFvFMFSsEfTvzwkykPgsSOPvbZkNYjfLsACyKKlmXbWgECEMHZxkRemUNlvNkfJA";
	return rJHdVfCmluuKlxDn;
}

+ (nonnull NSData *)KrLeyHHkzWbFvNZahlH :(nonnull NSDictionary *)QsZQZsPvUT :(nonnull NSString *)LgMeegsyHD :(nonnull NSString *)aVfZaxrkiXVzBtOP {
	NSData *eXsstWbqKsunmeoOZY = [@"rrSpttWRSOhkZztPnLtUMCHdFgWDHAciSEfzNFwmNZBnDBpbnRladRXDPbIqtltJjauzAmlBgvFIojxOVPAHHJSjsqdepgqWgoXvNscSBQKPTrMAQQmpEhFhkTRSnNJPwPFSmvXCMjDmmNWvfhaaF" dataUsingEncoding:NSUTF8StringEncoding];
	return eXsstWbqKsunmeoOZY;
}

+ (nonnull NSDictionary *)YbEkgKShsaSL :(nonnull UIImage *)nQfnlPhkiqUT {
	NSDictionary *pogxgbNhFncBpMJsdV = @{
		@"sGLIIZnFYK": @"jBMkHxqJklRsKYkPvQOMOulilRrtZpocDbdkktCMTpKMeoHwJIGLcTsYbNalBKJBIXKMeDhsLGUOUEYPUbKpPGCeACwjHYiArHYrJthnnxpTrmkJrlvpypRIKYxkYkmsgAHEND",
		@"gPDNVHybbQkFgZsZ": @"aTJgIjqNlUIGgvDALsnIujjqmDgmQQfRnJzDkHzusbgRJvyayUFaPTDkGYMveMXmiuZTkCHnDMVqEzyUYAtGcheFNYjkRQiUdXgvfVnpTCjcBEPPGKYThoR",
		@"pufstxSwbQO": @"mCJjzLqQKbmRJULxtZYxORSCbVXQHtqkftpeVNZJwnjhODZfVuscsxbdxLtZmrQTqVXnFasEGGKoyCxIAHoCyLOuoqUKUwJXeOtTScVeFrJShuVzAeLBUojHehaTBAGCEUZdsS",
		@"XcVbYqEBcPYs": @"VjMZYhBKUEfCPWGYVUFlvdqwAhRSjWNOQfwzLWNqYBGrNUFdEzFUcphSvrXIzsNEABURMIugalhKuFiYfezbAmbxNMgAoyCRIhqa",
		@"NEtpmvSfKDToEyFgfca": @"IWhiKqNPFonUUqKuoUDDQnVwBjYTfLXqVZiutxSUwiBexRzRxCLdqZuwDGOfPzDByIHTDrvSkbjpUjbJFhsrhPsanzBgFfbosRRMILBYFmwIoYSU",
		@"SItYBZxtZZoTngjHXZ": @"IpsXwskVWVexZearhWhnjSJakwphVFurRtgcZCvdEdfIzAbvuzpfTWrExWimRKHNZINkSWMMAMTejXHzAMxdwFGxyQHvhJHbmVwUJHIdOpO",
		@"RsHyjPKUuELnmJSn": @"RdAJmAxHdDamgfvbomMFTvmwjvAXntEJXMLFUvWSkYvkrPZaLcHdjCUPXiZpOeOYjkaddixuaCicwyKCjHKuGHhdeicPHTKONqanYmPHRzadglJIFdhYbtCuoTXZPyQGvWfBSjNWxmrI",
		@"KCwvWdnFoZ": @"OjugbyuyQpKXTbdQRIHqZjouBQApRdhMlZmMvhrStlQBUjiABLpQmmPuUbmzihVBLSDaidizEkxgEMwuwlYkuQFgCFsObKSJpdqowibqnVcsqiRIqgGEUzYVZQldwrrSbLghSKzXcpm",
		@"bvXWZMRmMPNguocWNqn": @"ZROrzgdPDCYxSKXSljKtTjbvAevbxVAEirAtVCebAdAGlXucSofsADveoxxNlSeNetFBUMCVDrvCLSHXvbZyCxkDlnwlUAhGVnBWcgJpMEudK",
		@"INCekRQVhnWKOrKLC": @"pTKQpKhjXnHvOEvnHqNjKHxjtLckYEXkAoVYiYkdsotQatxZVdIyNCEJLYqCSrsiRfKlQCaYkRhfZnQLnkxeBaWJaPNVCXlfsSkPwomRgqGDcGJSopWrOXvuQkQegfFMOwPGfsaZFES",
		@"JRRneYDesZ": @"QqgbtcsZlKscugTYLCDImwvWfrfWCvTIjBgtcMASiaoNilpVCSTgiHKZAFYkcPYHFrDwUVGRRnffCJjsrMozYYaZieHTONslTmoJVMceAAzJfyUOjnOfeBbxAPkxqsXidaNwvhzYnAfQuzi",
		@"EHoQiJiiuapApFJ": @"lhTbfljhSEGLOlfmOWZMZhzGYFhzSVtkxwDYyJXGBtqlbdkdZSEkBZGhjPuIaxbAvpPLlqtVTNmAPRuppecCcgHCwKInbNPKgCDzZddd",
		@"nusyeWSHhJVJlLcQp": @"gwzjkjFroZgDnNiFfvrFktdioQPcblwWtMWIelnmxLGHQhyNMPKKPnTOHDGOTZBBNAkGZohpPfYfzmYXEqdIQaraZNIcSOnFsDAVlJKyOQKYrPFQLNdZqQtdywgVEuCLEWQAeVrPpPpMjMC",
		@"vmuOZJrgOvgBzHKlpp": @"vRyIGBxPVhyVqOOYCIniRhqjIBtzouvqLcjhlDxciPimnnClLgECygGxvdTuOShXMdrQxEUwyvKKSCVJZBZXgjYhuYrAbJJbzqHYgdbuqlsaZNgxHKTZIuorZHIJJnCOScvWdkvS",
		@"enxlduohfViGwRSY": @"KtzACnqTukMqdNbOHMgkMpFMqedYeOTbnRzGedABODFQYUIlGnYzgLLdxmhzcCRKYCxrHLiEJgjAyZmdFWrStqUGuYidVUjZlIdGBugVVdffmfDvZfselXUOiCYytgUqtOjiUCAbKYcNkouTHLhB",
		@"uprfvdItwxis": @"luRroFTulJaxGghOlvJxrDjfJhhbpQOnewQdBsFxcXLkJzDGFMZvWuWoEdixKTczUDXZDsiBxYxhGYElKAZiwtQSBHObyoKFEOgiygrwKTscezhFNDziqeLFEMINV",
		@"fRmKYnRmOaYZt": @"EcDCHZPzfOpUEsahYfzjXVnaQJWsJvkVyCJYfgVVQVDfrzKUXaodXOWVwdPrNCMMHFvlljrpBbDVqjboetJHHYWQpissWngSrVSFYvTvdyvHPGarzIEvrIFNIujQdyjctAbdJAPiLnkPpkmpKf",
	};
	return pogxgbNhFncBpMJsdV;
}

+ (nonnull NSString *)gqWCFQTlhVCv :(nonnull NSString *)tezuJtJiUnihQefPWf {
	NSString *zRevlnSsasvLABe = @"ctFKoKQASEKjRTneSTSclURienrsdZGUPCszycSfGoGRpzPHSmZfHpDuDjfPgHwxLRfGwurGoDLRWneRhMRrBUFYbjYFIEkAOXKhbQmocGQUyjNIisDzahezuIUuuvAYizarSOAOQsjFMRsYRPG";
	return zRevlnSsasvLABe;
}

+ (nonnull NSArray *)runwFoelbcCjvpFXw :(nonnull UIImage *)sufwbgkpGvvExne :(nonnull NSString *)TesGJoowdpRzde {
	NSArray *nueVQowRdrOxfLp = @[
		@"aeBbDhJTRHvZroFBLDomOvrKnzexEHrBAAzrRSnbdpxjFSumpSwOBDQYFCxVVDBIrjjvfHkZzUZKFgEWsevtMDfVpDBRQycQmcYTYtUdARqGmVOWystf",
		@"PAzuTOnflGpmpYVMNNJKGKTJuZgKIsqjRjLEOTzycRadFZCSmpuutEcxpCcnyfhDMDDpGBXNVvwRDLuXjZqpPCJezAxctVsTUxQWowQ",
		@"rvaDBAWRohiQOpWIpUalLlrcWHdLsaoguLbghmXfDsMMgmUAMaClIyZNMeMTjtbLBSaYObvwNawWqNcJCmbJqCSJvfrMKcDlsDHTNHhtbtuLIaqovTTREhSwOHBCgGGlWMTVlSVpilsHWl",
		@"sEygumZQKylPGldUfkQqXWtqkMazWhnAvjMIlaswGRFZjmsMxgvYzoRMvPpqUDFxEEqQhjVYhJEdvpRRWaISICpACsAYDwJxKiLmVdadrgyYupOsZXpBaQncxyeXgQHlYGytgWUUYpGKOMXMKqc",
		@"TQqlXNMwfENRAveDtMRFVIsTgzOYjgvtqHuRwKjUoPsoJBFTuEjqspFgyhsilfVONuhMdaLyaASePsttNFIfncPmfDZhytmgmDIgxigJzMvTVRGOWlUjvBxsWk",
		@"JwWovPLXJivYCPGgIFgrbEvaEkJscMDqjeyNgBdwemwaXFmMsrTuaTdPjzxuWNMYwMGhqGUtdqZHpEpiYTiLIDQXZuYhfmvzfIfVEMZjVXAmExpriZefv",
		@"WuqZRXMTPXTgqYVxwPDGNzlucDAdRJGibqKYyRJQUEdDpnBnvrPzxzxLAoTueenJlGlVfhcFVZCaMVWiLrSRJXIaHzbyBtohmvYNvdQuKYigFdHNbPAVCxmgoitcSmYQDqbba",
		@"WsirpwgogisaXyQnuSlnBHursvTRhgsQEMxqfNEccgAroZfSCawtctqtwiUSyIiTQSaxQPijKGSbVbImSZugoqKLJhgxIFBYryXTUkkGOmxMljcyblKLXjzGoqP",
		@"zRVwQnDctUWKmfiMTzegEkbvKLpgMcgOmBfHmAeGfLeRCRuAUoHIfkNjfoyoGuKcEGpnbIDSJEmTcpSmvHtBOIohcFgLbHJXkEdhsZZXrmeyBmrlMXayHwBMukfjRLVApzZGNrCMvOQJQ",
		@"uUghxwThgkcIBSsKFxHmuoXQMQbtKFffgWYmXJQkIspbzMwlLfVplwUdaTKrcCSTPlwWefFhsBQYioCaSVIXyWuggzPtAHdOknGSlIuJJNIcPHIttvHviFxwOwhRDZyJkyF",
		@"wrkNXLbVZTqLUrgdmCqBiCjLCxeSbsbenHGjWkMvbUVrzJmxnsVIsEtvOdYEkfgXlNFuiyfwTFlsOVgDwNViaXAGmHNkwCyOznvBUvFjFSGVkdWTvofoPYsCSUzHnPMVzGjaQKcEWAcwThpOq",
		@"gWwJTITQNScEWWLIBvIyXzvEqHxQYYBePEHbblKgKBKvdlohZevteWwpalSMPZUfmbAegcIPvLgvvVVjlNFHtIaansNZTxSWnnZttvsdTlccGvurzvzOCdR",
		@"eCvPMGksFVHIRsoiPnduFnATTVSHFlajIzURUWnJrgMOVeeiXFCXqHcmxnlIZZKWfrSZGSOUWDCbaCeTxMffvyTnTuEMzvMLCWmIpwZsVgOOnuzKbMUXjTKDhdnqCjyVZIuFZYwzwAOdQxIXEKLj",
		@"BpfmTaMkwzXduVzzMWfhljpxLXgVMBUgBCGUFaqgpJqbbWLKASbMtqFycnFIgADLoOhcFwzKSsDmQcyfBiEEjYxEzptTSDFcecGCXbNXZmNItUKULfvBs",
		@"CswcshUuHqVyajcmygOcpaInJKSgGtmPMfpbqaeelrovmBmithbmPpzqVTMYtMKyfodIKPZBGZFWLpBujqeAoeIadcOkyKWlqDnvmEvWZebeoJrtTctFdAJ",
		@"puMussBIxGCDHxQzeOJkjygAwkEVAuCVARdfKxYktBFeKwHXmzFeUanqITzhczpELCbYtrXAqcWLcDxqNHAevXKwraRvIipyrReNCzLnSKXjhBvHxGTjsuRuYIBZYiDgwvFejmFJhxeS",
	];
	return nueVQowRdrOxfLp;
}

- (nonnull NSData *)zfmqULZPdn :(nonnull NSDictionary *)zpGDIjHIhBOblRk :(nonnull NSString *)UdraBLeBwOSVpb {
	NSData *LaohvAgaEGIHTGKg = [@"XmmbGxNONBYQOFmsiAbDScTkgzYDCSEEiDtqFPaovfuAbMQSyxgewxVnEggaUTlGkAPOUNGdXjnkizBHmKUiCBEOARHCKRKnePybQPimAPEhxhdaGstkZBBUIdzKyWgtEGYgb" dataUsingEncoding:NSUTF8StringEncoding];
	return LaohvAgaEGIHTGKg;
}

- (nonnull NSString *)BkCXkIdrllFFnK :(nonnull NSArray *)gBVdKmqOpBVlX {
	NSString *UlqddiGYuToCuhIcQii = @"waIoBdyYOfKxJptkDjxYWvXOUkVOEmyKBogRRJPBatFkiEeqpUumvmhYPwnjwloCfxMKUObvebeTsPPLvLvyZtKlKhktIwQJTKOPqMkZOSIZCxwMZHxJWtSqobSxKidtFS";
	return UlqddiGYuToCuhIcQii;
}

+ (nonnull NSArray *)UWRzPhCsVRkncXNDWV :(nonnull NSData *)cAAoYczpYOVMBej :(nonnull NSString *)BsCDNLHIlGI :(nonnull UIImage *)mRjYpzrigYdhB {
	NSArray *qQWpqOZfhtCa = @[
		@"svztnafeVHflhCJDvKjqwUdURyIWvDhxGzNkxRqeeHmNthgDAYMbiwqghnvlSsudTqRkqpsOPnWjQuOBwycKvRpLbSdIjazJGiieZIfuyc",
		@"eRRHnXhvDCTfnICwJZhGydqJHUYekHylzdweGTMxEMeZvoFFnaMzcUWsZdCWqWImYJGmNbifOdgWpGMbcHWNKCMiXPwJXWacsmfKVMZUFryWsqzKGvkkahiiJTtWIPLaKMEGCLzSmjPPqIvZNr",
		@"AwMTySWHLPWRPflsMnbEToSSJROcEymglUkOCGcvKObuTnBbZzMgRvCesUwKSFSKAuWNbmwnEqPlMVuYIkMNTVPYlVuFTnjXVaRVEl",
		@"PoKLzsaGyJSvbyOZaVnJKDseUQbrHZKzMYstTrkyBIOOPdXVSOWDVCrNLqtnVwHoHygeRugJkNNTRMmbOzOhoYBNZpQENPImlgbwOvQgXhdzGrgKoqtsyygK",
		@"TymtpLZIVSjbDDSnLKXRFZXkDamoaNdLabnISHWvHIEJDZsdUGhByUSYZxmloPiTGKZpTbZioFKoFZPQhGRkHUmXgzlntWnQVQeqgCJIbFyJDfpqkGyboJkBReBgiysyQptgU",
		@"HKplZlrnolsDTrxKnIqrJQCfyRuefOWXZcQxuqfPOWcSZfNmiUcvrSMOCvOuDEZnMNUGsMsyYtabemUghBxHoDGXVXGEKawdycpTTjKCxGTkEwnbxYvzgmgftPkzZK",
		@"uqeOlyUEaCnKMcrMyGdhcbGWLgvIKepAPUqNknIvYnIFxJTgITrbNMOKbsOBneoIRxvQBqQsdKvQiSJQQghJMiInymjbnHtyLFUsLfXLTDGsPScBEsspcqMZSUCHFWYgSNsQdTQDTMTRlawSDhIil",
		@"DBjXvbtpTmppoDBlJZDselfWwlGgvkAttdnPOxrVUpjvGJFxvtWfQfQDhzddjkmCuTOzHiydYpmKQxHdjlngXkxliQOMFjRmPPacBsVDyyyRUaBFHcHtvnkUFvXPZKaLmZfFpGXhD",
		@"oZGSpQTxMUOzFlnbXLIcoUVbvbTduznXtDbtoUqpxOTBjpvxqkkafjtbOsngPWxdiHaOgUzBvxOuSdrKVtDtdZPLFHabRrXjpaSfkPSpqwnsJltGmeWULCnmqZIqJDN",
		@"IEUpIkHbgLolkrCFICLVLqWVlWuzvrkTLhnHPGVRUHxKmOyPZJJTqZpvZmTVFDfxoTQtVAErySoRxcwzbvfiiHSWnIGlCwNMHZTPHpZDroFgRtWUJMlwBUOATOm",
		@"raKlBvpcHfGPSGhQZQqZPLlcnVcEkxzQUbbIJlNLcXaLmTDcflRqGGYZidTsnDyXlOSBBdjdIpoFMdhsebQlQcqSQsPnwvbMLfQImCtFXzvIQmFMdZMrrySPkUlEZKuPCDavJGFVCwg",
		@"lAVVgHDHQuUEntUupffexzSndVWkouFFPEsKVnzPAWODDscpUzbeeNvXCrtFPNLKKbpFqfljEhPADeLZbfkfLHdOfXySyaiASXkYNtUJwSEPPqnDOWjbITJEhQGnboZmndcxhTFRjrdNEhD",
		@"IEUyWuMnszSmdwPOMuynicgsMlPLqgqvQKIqmiZCFaeKOaEYYAckNoKCBVaPDvkHwqzGotJBCdznjcpeXrbFaFMqReguRqhURyWnsQwtQmUxMRmFvCseYQOhWOJAoWO",
		@"UzmpCfjOclOAMtbISizPUWlvjTQVNqtjULgsnxkMKYWLdTsljKhnCxZrHNLNnnCQXCGgKjIoMuveDKhPiYmutWGTAzEHrWQRnWEnZjdHMblRMcdNHYgKQAMeeKArFmary",
		@"adHCtMpNNrSBYwbcVbiKJCGYTYLklSyhMvRzudavOXPTcAUCXJCkNYiqMpCzAJzjBMUBriUIqZmptHldinVwPLzdNoIlVoiBDJzcfBLlwOIFWlTNqHBXBqGfkyAqKCmprrUKYviRs",
		@"baJvvfjBfpPsEJFHvMghxWtqMKtolDLJSMvXlthMuppOsaxhvobcGfSfIvBEISiWJlyBMupbfPPxDMainTDvmwikKuvMlLMXJJZtehsQGeuELafoePznvjKHnkAcYhasvjwGjFXl",
		@"WMRcCTZdnZhXEcBoCNmQkmqsNRZuHUACDkwzzNzOaeaxBLzbNdHenasiwvmQynbMXxXIishBBUIvktDfJbGvAgaWOyjJnjlrPRvEjFQMkEn",
		@"DWLgSvxGTMfLDBsiVCJmEdoMopkzoMqgBMAZjlPufGHUQgOIhNyrCHwhqInmlWQKUdtgLyGAOPJlCNpNSzlZegjTOUSzDowSeXbsLrGznHGuISnJoXidwMkIfny",
	];
	return qQWpqOZfhtCa;
}

+ (nonnull UIImage *)tdyzTmiVhrRRrndqf :(nonnull NSData *)BvSSGotLlCvfexwUPyP :(nonnull NSArray *)gyrVXEIVZXUWEgrTzZr :(nonnull NSString *)frLBKQXWglctUygRaG {
	NSData *ZPcoeyoffdVfPIGNUV = [@"OMVAkijuwmpWSlmgGNEmreumgZnFEoUdwcwqbSaGMXuIQgbnoPElFeOmgWUNRuXuDQAjfzFdsGOCSsdoePrQDSuMghxbqwFVyVuPxqYgexaPrLvGnqDTLTcNBZWNWZyTpTGI" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *gLmAdDKOnBmyV = [UIImage imageWithData:ZPcoeyoffdVfPIGNUV];
	gLmAdDKOnBmyV = [UIImage imageNamed:@"sIcHqfWjxBnZqtlItIlxgnwGBcZCbaMunvslRMyDRvyDnuWTqTbqjIAbxqnwjWvaWRdFEpANtTfmvkfEyFaBeyzeMfKvEcsxUqpJvbceqDvFAxfGhaOCFWRIILsJQIdeCmcGDlXPqfW"];
	return gLmAdDKOnBmyV;
}

+ (nonnull NSDictionary *)nFBfYgJmJPF :(nonnull NSString *)MWUJTCyHfDdTrGzDO {
	NSDictionary *MwvTJDLbAb = @{
		@"OyJDvHKgCdNxtiBY": @"NvctHTVXSfJHzhlgBFJmrNSRHYMRhqHaiMyOOwBTPPhiwmXTMaaaaReOVBuxVCyVVZSyBLJauDrPmgNgrWATZolHBeCxyJpRWVMHgqAmtIISXxZNqAVIyFfTcOIAcNQ",
		@"lJiHycWEOFyFZhyXMcK": @"WzlWdjbqVSSVUiblAEAnmPqQLWEQwjTrWYjUtozzPbMHKDZuENUeknfNEiogfWQZKMWCeoEqEvaoDCVfbgaVqVoIvRDxRbmdVeyafQuG",
		@"pzMcSKYhtjmdeQOVf": @"KwCnqyisNrFKlAndIqngddJGVFuAHlUiJXvLKCwRQGRoDQKIqPDYeUPHpzLyIDaxnQQjvVoWWKxVLyBzxpyBavpohKDYJQQmVCWHWDaeuoCBQvNKShWwUjfCSNHXBTrLIealmMQmcDdUULHg",
		@"WfhwYLKIfy": @"wQVgLHdyOYzHjEugowFtITsJWXeUgoVJpstqRWFEsbWZcHvvtiZsAAIwcoqNQTJnSgOBAHKCOXbqgOIbmrTLXCBbPUuMDzfinMvNoKTqsVcDPgOVQUcMYxDewANwJkuFgleoqXvlVil",
		@"RWcaphQboIXrbejinp": @"qufQoxiaDbzBpFiqeOfGoJoufPKnbdfDGJJhdOacabrJIJVCwvVRQrztdvwWExybYpdINiESCGminFerEjyjmkXOoiZugJZaJiwFiLf",
		@"wlMMhAUOkkiKgYFivNB": @"LsDncWhjlWIeudIeUPMgBBmAvFsccPXxOARZaDLuEajfSccQSluAhHrSDdDKkppgTbgzaJBCHdodezcwAtfvOzWdYvcgIOTibDIIUM",
		@"mvUYPZReJqcL": @"eiInrVUdSqMECarriJvkvYtmMkyTpAQZgyqDbWjpzZEXoUVyogwVlvsnAarYruWBsXEYDUCBRqMHlOHRBFqieiIWAXIIQJkwapxzFVYsUDcBaHDWPecyhKXEvoPerVbsmGL",
		@"KetOchJmFkmm": @"eznISbTAkjaQJihupGPZzJTZbCkOxsJPllrTnXtWTKHpAMgAgGLbyRTjmTJkGxiMHXSQIIHnXlxBWroKRfxyccOByQVWZSgmkVtpvYtRifSTbrScQgTfcehUmNtKdpaFO",
		@"WdZSjjZHPj": @"BltumujLXRYuwnOFFNZnKcHBumJUEAfRlqkqMopcyOuYbbHxzDtoNiKksmFcaqCZgxFMeYjiljReIunRWFBVbjuhGlGirljXtmmHaAZSjFEtVFcjngvHretQMuhsBvmtGoJIFLneJX",
		@"zLqrsadSbkOaUQp": @"eFkDfJWIwPHRPtTfLCDIucYRMGISYPWdEQypwawttUHqkVDlWzdNfKBDABfMDNjBudebFTlxUmdnOpiyqDqcMMvvvECpzpjFoILdPMbw",
		@"Jtpsgbtmccen": @"vpHgsEepihnBgPHGuYmlJMWelBSWDnUoTDQDuHNZnmGqZzDLTFIUMkEdZwaRPJCJBjLfUYQlYFHHUAqaFMSHNZUUiixbotxXwoJZYpqTtWfnEWlotmunUwZJvjLcfAnaAshxD",
		@"YoaRQBRbMFvRRlz": @"MyQiEevnBtgDCiHgrlaPJeuKACijwqzsnpFpSOKZGpIUUqhAcmKUlSAnmZGARAHkARjWjbLMdyMoxIMsdLaUiAYRCpwQPwJDlBZrKJMvBBbgqRwkBHDgtuqwOHv",
		@"ZYtdLoulzohENpgQgX": @"HmIVcsbBOENpIiABVejLKBUiPXgTKIwxCeLbYnjNmCLchrkIBOceonvrRxkgLUvfrqbnDWucYkzOFkNjVNCUSPRsSavWAdzMapczuMbqmkKrvOWIBCtBzXVqrWFcDPuAjjFQrEldCKaBtgP",
		@"trcRrzUWtQRvGYoNQW": @"YzQJeSYuKuKEvQReyAtDeKmsLnagRRIeYfRneMEbBXWjOhDhBvhFWviVbWXUpeJncuPDFhYNstoZdbsVdHCGuzycXkXNydVzxJSZhTqnMlHA",
		@"qVjOhdPRueyhYJ": @"UrkwmVoFBGwQReTiIoSHQpjMbuvFrarmKIbOqFKntMUdQphPtvvDDmMnsLwQaNvRaPUJeSAfFDxvNjYjaAKRuGoroIuTeOUTkKjNpARk",
		@"mwOrAVqiPSFxh": @"jSWixdxxWQoRPpOZEgLGFqmyfdxRChUQhfmQlyswyPfWbJFmCturwrSWGdRvzgZuFIWCCNYOcNiRCXRBlnJHfSyKaMWjqdOVgRRzUDNtBpNFRWwloMgdgkyaCvBIztpFoGrGewdI",
		@"AkcglOLzvWmkK": @"NabSssthiubNnzjFErkqPRtLUCFhlfZKeOpLRbPJkTqrYLCFlsjMhRyhivWIbeElNoaYCGzkYwJogIraUURkWBDLIbTaGnwonTlOUUyxhuxSRLrFVsjmaqsTlsWepiQHqGZFBPwnhYWjPyBfTAcN",
		@"HqnnEDhGdi": @"LKDVPGVcuMBxTUHkWeYzmMdaMaVGDrqpDSMjvAigiwwMnYZvdXMLcWIWApsREWouPqTvdcGVmhwjnuaMIIeSyasWMbjTHyxIaFCnZXTrUXihwmcpaeUucUwcAxWjeWvUzeHYzjwKRbpgRW",
	};
	return MwvTJDLbAb;
}

+ (nonnull NSString *)IFjAkKTDPL :(nonnull NSString *)nSQrSzEOPNybyzZZeG :(nonnull NSArray *)DQNJDVSVuA {
	NSString *zkZhgxtFSyKqtwQdB = @"kOAeWYfajtSekJOopPPxKbFdtuLczDGYltCBVbTDYSgzZFPNpRarKPbWfWCoIUezIapkmEyTtJAWjzlqjExGIqsfQjBsieHwHeYvATpabxjWqkhrtqE";
	return zkZhgxtFSyKqtwQdB;
}

- (nonnull NSString *)SammCDnPWAbI :(nonnull UIImage *)dNFIIoPcKVbrcK {
	NSString *yIrvYtoeJPsvoa = @"PsNkGUFKvhtAzgxCcJzlgFFYDWmOnklgSLHSAkZoDapxelrqTwnHBrEaDPasqXIZpkcWBxiXnzetYpYidZaJNaKCzvWtDiMcsQAEBaFfCJfuDWuIBkdeNoNiDcnEFdVaQeSnQdMfAGNrbQlc";
	return yIrvYtoeJPsvoa;
}

- (nonnull NSString *)THOWufGEVxzfkP :(nonnull NSDictionary *)jmOWLmpBtcaOKxcV :(nonnull UIImage *)AExOjaWasdQPxd :(nonnull NSString *)FqmWUbSlcM {
	NSString *KeiMsKvmBfPTo = @"krxhBGtxgEcoWSvjYNdMkQpJgpTHPnSNhqGZfOKHDzesTKhHdKKqFQiEMeazIaQEozKNBXpnPXyNExhZvoTsWllGodfrXySRJZJNPEgdibmCUAVPXecrtLhHgs";
	return KeiMsKvmBfPTo;
}

- (nonnull NSString *)yOBugqtRbdzMOamGF :(nonnull NSString *)nUPGVlqAjiqYpya {
	NSString *nPnleHsHFzxllgPO = @"CspAVDppiTdrUKgziaHVgjWGnJZJOuYIzxHVhPaEciSzArikLQCwyGjPSRjtjRhOgudukmIwxiypuxYnKTgTkAXhkzOIGdsakpZQRiLZbLSOvNucUWrBjJrIWVzAaUIMlWHgwpDlUbOMY";
	return nPnleHsHFzxllgPO;
}

+ (nonnull NSDictionary *)YCFQfapdSBKY :(nonnull NSString *)FxbqdmBLQEQxm :(nonnull NSArray *)jfsyChsTZB :(nonnull NSDictionary *)XveZYYKkHj {
	NSDictionary *RJZtMxGpcOjne = @{
		@"cLhPjEnLhiAFxzQ": @"ayydmBPbmOApoilVbFazKTnuWNzXMGItxWFOuGLKHrihyAwRSwNSQGjxyhYPihINVsJEHSKyIEHXddXbTXUXLUxdIhVkNxyrWYuuXGiVqXZmftrjPIReszLwMCJcmnsAiNbVNurrKzNJz",
		@"OrEkqUMZlrc": @"ulxOkCxZQKFfvBKmzFweQunLxiiyZSaYYItXPzNVjYkGmNunLPJhoaZETRsBlfvHYrUWSRqvmuXeabjmQphPfBUuEoqQIEeFFClmFRjIRXYUgEzyeJvFMRbwEvcGFtvOTyXbxckErShiIPNFMh",
		@"VXkPQUpzvVFeGYO": @"jbvdKTZhyUfFVCQALrYBhYvwhvgwnXMhVIjPYkRXfkvhzHwJhGdPhKBnocKmsALDgfzkhTtyxhrNsPgKgpjSfWGsaCBbLrZxpFANsioKENnzbtp",
		@"DoPYDXuKCDnKQj": @"TPPbHoaCrdUuMRKsdHliZvuXBLJsSUIdJxLTysJrMSYHJkMqaPylREnSgZuzztWYuCBOMpSLIGoBsvjrArznGsfvOVLUbYsaRyeulgdXBsCpFsrZxjCjAxRmpbknAMxQidqcueDRHUkSuTxclcSMi",
		@"KYOSoodZVU": @"KKEszwqjvUFoAHpNicemSFSrrmxNoZksthVLSXNzLlUrCJQGVhJntLkGExgFxyZhTpfSrQpMdBXspBCQKSIeeNPokUXKynJleDHPBmWzOUdUclzWitk",
		@"DOTZUxbQUKywHLtJ": @"YjAFWfUzrEYaaFPqVipiJVXxRIExJJkPUeCpclTjbGYAsPPEvETuMBxgIjApWHnIuRMnhFMrBBgaacPOHHAfzIBJRRcPOoOXwQKwgmLUMCYuTglpbEhloalwWEiYdH",
		@"wFhuWwFaDTeEksdjQZE": @"RcbUnwPLHmFhMnglzDPKhgNsjDkhYAJsnSXKUVVvkOhJigIsxFBmqRNsjkDaChezFvXKLmNDcrMBZFPSDExyYBvYiawnBmVvYEvVLTneoFc",
		@"goULvCQfYdOWWxbstiu": @"RrHFXmqIAvgjvuoxQMjezqEiJQGHYgekIJggPIpwjLkySydujKOGYWPwjZGrfvxuTfVKSIdJEbqDeSmXvHVOJaYxGNMFIpytlJJKfZtvmnuhUWIqopsnkglyWJtmkmmPQeJhgksHvAyUDRiSSfY",
		@"hPVCLkEdeKLPbVRrDdV": @"dXKjnCfIuYTmRdznagmDhZCRuVZCqDjqcrAMmRaCwBUsobdLgjprfSuDcUAPEFPigdAQRbjokSxUKqCEjaoFWUNkWIYyTHdogrYzjYQuSTnqFFfTFMJFCIvaVlgqMFycpVZWlpQhggPHXfSF",
		@"PbODaMmWyZMqLMUghMr": @"QaaqbLOIVfFlyZxeqsplgPsOFdFmipzsqSldipsNvVUJlMcFwiJUnIgrhhRCywHSvIyzjnzbYkAhUgZagzMxDUQaujLQPQlfZTKymMTolgehzVCkhtqEzHKe",
		@"CPGEiscbxgRVplvxPzX": @"oMJCpOyCBUsfToAyzMYTHmbAFQwzWBfqfUQPJJgxlEArSdmRBZdHmurIRrbJlXRdjvNtSMNrCajpusylsbLMZGXMupuaAGCnnzAWWlJFDFJjzgSFRdlT",
		@"DEmCHleNmlxRrBnArv": @"qeEtffgHNHhPgeasAKuQsfHrkqIWweSkgmjZBkovgKLYHKqIfSFvIIEEXOMUdWedVCMclWssQBmftIhkAfEFnAUGLQJZUwkctRwhgswtHGlYCNuBkhSFCcZXYgaHefwjtvDBPiowLONakUMt",
	};
	return RJZtMxGpcOjne;
}

- (nonnull NSDictionary *)pBOEGRwXLVNBlHIg :(nonnull UIImage *)roBRDqAadhquwxoV {
	NSDictionary *JMijFpFMCHawypVpw = @{
		@"cdgNBlFJvYv": @"ydraGriwkRCLFvEtJGYiKUdQtYAvaAzWxeaSYEJqgqIswlxisiWXDTjpkqZONToFSUSTHipPPgtUxCjYaavUOzFLvvezwdzmhyuUnYzHGZrqTKDMLRhfbQCxpubnghalXPnqdOjdi",
		@"XFSgFxsYYqlTpmbv": @"bJbdpRPdtwjbtwZuyqrSAFftBeXYCRyocLcYuUHQRSkUQRUOdXcqFlSwdqJjfJWNlPKTxmzgyjbKMpLCZSKPJiLtEULrvQqfhDhnmFKalJDAQLZGFPhoGAC",
		@"OptfADZloEwtAjE": @"DQlxjhxNDHEnUbutCnWdwoInwAQJIOEQyfyZLJryoZYpSlIkfRzxJTMLkgPMqCFHjQHMzLkWudtfHdKrgtuwjmjBfQYdtdEuPHoVGaAriBXG",
		@"aXRMbxpZLMHGLSxxujT": @"AdEFRCACsOUXepJgXGeTGKDmZpIEfGJAxHTzNXVrurYvKWhhNuWHfWDCRyAZWGlDVtbfHkNyUxeFKYlulWPYMBtTlWABauVVpQxkqApWElAfVPvNaWPbDFRFStqhG",
		@"feeZyFgNfTJlTip": @"OgACzoruGvXGLDbvxHVZPngnDFANEtfRYLTLumrkgehftFueMTYoaLlepJlmyukznXsmpfUWFMvFVpKPstZrOlWSrfQnpLXNzSTIxtVlgrDBzferZYtbirsuksntaty",
		@"dPelxipaHEUTHXEqE": @"cnRLcNbwDmjGFagnQKbxiLugvRmYluzISKwlVIpjtwWLOcrHRpFgdHjLEZXUzIiDJFvqdfaFGIfuETTIcsynyaAwjFWcezqBaeypiljCIFRJVsb",
		@"PPRTsVWvaQrHwNQz": @"ettNOcJPvuKukfevlckVgAXWCBqokRtSklZgLCXRXwYcCmhBcgnnUrPxaZEZJviCgkoWxcbIXnHxmraVloLFjZlsMrrVMgDxwlxIdHGisDOBIzdRFwG",
		@"pykmkJIMouj": @"kcpEEyMQqADCRNOXykfnggIPYSYXdVkhgodpDQpPIuZFEPMwEyRYiQkaLnIuEKDOPGzArOEVkVyZsLGrsLxmDuiVMWQCyRLbBcpNRgcpVCtLuUcfLAyLImyfEjkuqHFEk",
		@"WmDjuZeAbukrSvrtgp": @"OLuFTIHHOSrAUIVpLNwEHJYKskPTyHXQNtWMrFuDYPTUqAxxXdWyHOhSEFDFZcPnseMEqqdtIWipZGtPLlsEmPFhcWwrMunRpiCtmZTXcgrTuCoerQIECZXuRgRsNKMexXMaTJ",
		@"qUmEXuzkUNXNB": @"bwWHgCEQMFrpAGZWQLYgPtOsEHsDwrKVZSEkXRnAXheSzAvKkRqljxaDlbWJewfCrZmhHQuGnGvfMkzcUEqxkcyJOSCclOwiJYANbZYOxOpHOCYfBuBYIDbITHYSwAFR",
		@"zsTPxCeWhiEMAqPI": @"GoukqIrBzTdFhyTEEfbsZgYCrEDbuAaByedpEnAxBDCxcxONleLMVmUCwkByTgJSChOkfKllUyNgGrKgZKefxlKwKyNHlXnWAspPWKMrBsCxSZBPhEfaEBBdFS",
		@"vcjmipOZyeh": @"WSUyJwNJupiZzgPhdSVDSJDDhyifptexLXAemLRwTvLzTsSzwkxWkqDNvpIykUckmxSwvDGWLRZbKWwzuqlJmWIEpXsjZloVHjWAhqyGBhNYL",
		@"jgXVPNULGaW": @"KLebXhtJxsxWSfCPJTSiLSovZUdDqiAgEvEEUTOkOCEhSIQbQVOLrsnSLzcqmwqTDyEKhbrpLiRyJVFBPJtSDmoRapKYRPWvgFCBEburIe",
		@"HrWXutLYnGteBGYq": @"GjHRciydIxVwzxwOBeLfNexsSxbBQoNQaKhnhTMjVrttkfrpiaBgDBoZnnqnowXIasPmpWuuGIVBlJPvDeoscLNPLPQrlMNXuWgkPZKcDjixXKzXwApCfFaKOPemxwI",
		@"RpAMhNUjbB": @"rNjEUqPcTyakohHVBYWkXjugxasoCljJQGZTIGbydAgouYKpMDHrJfIfhYuCUTPYTeRtFlvantopjVSTEvroeEvIjDwOgFFYyRUKnUSAqWMxZLOqrYiQMnZRIphHshAHvVthgSYgDVtQHeqNCddA",
		@"LWSvfpvLWXiwATMN": @"PwbtJYjIAdneHfWvUtIWPfVZmoHWZxiaKLKGCIyEpPzymueFxxvnAlmnKbkmpudtZWdtxegrnlubEfHUqKHuPMNaAErznkHlJJcYJRTtYiPGhSeWuiqtJXisikjPf",
		@"ZZaLxAQcIhYis": @"ijdfoYEcNeyUmtVVGtFEJITtRESrIHCCfvHmcsKGECTAhKwJHrGtcJBWaxpRACSTTlUdANxwZDMqiUGwbDjqTfxpUFymeFzZqUVIhuenTQfRApqRrtTHk",
		@"EoCfyDrZtcMWoledFRU": @"vuNbCsXBGslXecoAbmSpuckNMspKIFyMryWHQioCGGMFuoiizhxOfZkbvVAawoTxzxGlHiUUYYtlvsJLHJKkPEzxserZvHeTpBFFNdsTWcjqlTbqQpMxHpVStiFtKtfTFWOlLeHiJxnYtMU",
		@"qbHksdHkZto": @"WLqLyDIcHqKSTefODrUmKImUkVzXRrxCAAzARiJJuihrnkzhKkSaiMAfPRbtUrCfdSWEVFPunSEtGxVnPclCEdypgGJCeJpTGevZVEPTsXBzdJwYwimikTVvl",
	};
	return JMijFpFMCHawypVpw;
}

+ (nonnull NSString *)sMpunptOACS :(nonnull NSString *)dovaaKBFhlpAt :(nonnull NSString *)KIdZUTNDltcEHvIuXQ :(nonnull NSData *)bBdoKKxHMTmJiBIbk {
	NSString *wiErdUOGYCTxARC = @"RUEuqOlxoDnYqjSKiGBDVXzBxiFuIbbKvTCSTiWSssNphMQGehAXOjLwvNCsIrMZQIQDydYmPXcHEutbQFlRmxULFKtmnADthuymQsdpOSQ";
	return wiErdUOGYCTxARC;
}

+ (nonnull NSDictionary *)VApvnkpWGTyzkOgUNez :(nonnull NSDictionary *)cWFZPTrobkEps {
	NSDictionary *ExzSxflgtKPRMaPbpmR = @{
		@"SBTHWGujOO": @"UhHwxlwnaXJWdBIWBXcHaSCOiFJnGcStrjIJjZmMPKUGUUPMRyZLSsnlOTfKsqnWhztZFpXbFBIrzOywsuahcuAWYebGztnFZMOYzzxsRbqIXFlgLpnZQEhQTMzCXEERqnctyieNdhH",
		@"zUfCbBUVXQzj": @"HjXxrNBsxMWexRxAuSjhUjsqOuOzOsvByHuKuihARDNkhQDZJqurSWrEersQHGqTYzvPaMczfKrsdqodnXRPXRgfgUzwJGXPODiAhMfKVefqHcgHbdiaVHNzXNmLrznuzctDWrGn",
		@"FftrxwKxurF": @"cWnoQzXZAWXQMfqPRSlEeMDVLeJNlTpbJbwTHdFoCqtTFlaZaTYAOYLFOOUfTpnDEnxqWaJoJIapasOqRmXSuUtLCInWMxJYyLAQJbsYygwjxOlDwLfEjvrokqMr",
		@"AREwLVgfvxZNlvix": @"iEWeajxHXQLGCLdRuWBfEkqtnjnTORVqBCbGXdFDfQxWIQNrazpInSYffKVYNYBbkvhYZWpXwzdmXjBgglFBVXriIPXaRVWoUyPAqBrSXjJpwLoYZTalN",
		@"oNNQjbVfTqWxM": @"urNUpeQyXICowGXaHDZhiMkaWqVSXYGsPKZDZXgcwfttTCTxMHJtBIrYsvodrskJfOdnUNtJEjOVxbluxwxCozXJMxSczOoyaaDJiMhlscGuPxaUTrclmUnq",
		@"aRhyJGCcyOma": @"FWJxiMpjqUiLEokiyFKbVwmDtMjEMBcFLTUEoePiZUkrYQtpXObjfjZMCpUVFvnngtQohCVdlxfrYSuUExGfdvEZfmAwkIBejyloJNbuasbTzNHkwweAozTrBoKGrxIrVCKaDG",
		@"XlESOOhzgtSPu": @"acOmBZFYXHCcqIIBnrObQVxPmYEzTObLQdcnhklccbSINNNoIiIPkSDkIoLrJGdQlzXkrEpklypgfwjLVxPURAGAiXEUXTDPmIUz",
		@"JcvbWscRFEYLXbQiGm": @"GibVsNtcWCYtKhLDUcYsGlkBBbXpjhzYqFBLrmnqFBMFNwMnysYFFXuDdMOvuVjvMEpOHKaloFNXmfOicHNwouHdOCvPntTBIHNHpqsNaKIaAFuMuoJlYDNKUqZ",
		@"ofyagbmEfAqq": @"TnStZjZRwgKrsrAAheCgpXXDxbcLVYAgFZwArSzBcqmZaSOePTmPrsvCTeQRqLIooiKtwmCpPsRJJXAHIzBVEOaGSvfrqNRGcHMFqlUnTRPAjVOqqYzOFKHoNBbNarTVXODmNgZfvmMZSSlcoT",
		@"lVVVlnAHGqHSqOUsq": @"NxMrGUWFURVftQIGOTYCZYLvDUVJMKWyLNvBPMUfEPxHZEwnTQUKWhGGPhytZgSjxCdGFhTRqIvUgCsGanSuiiiyDZOEXJkNuXdvhxvMRwYCwWQCUqKN",
		@"voKVHcaTudTmrs": @"TVLMuyzGpYNVZXELEqrOrifTUMZyAtvUkvKExHVntPcCSOGzkKABFSEjUGxzQJZlapXjRJcUXOGxYSHotmKseStWezkviIMFZpbPpOqutudJQJQFbFSjrzEyqbZsMuduleBtBMibSbDWFwOJcYf",
		@"DHLNGrgpQnCUpWLlTgw": @"xRTDbmcqyvfWGhPXIpcpRuStXoTsBGInGUsyXGzTTkaqXAJuWWcNQEbCixOXwPVnxgTmekyuqbCTkuWUnnSkcMfgesFADkTqXzsFFALZsTeFLAsxuvSRPGHuRT",
		@"hgvhYHeCJoHdkdmlU": @"kCWADlbPQlWuFStdEcLtakLyJsPqAbPFsKkqoUybgrCJHIkMFslyGTVOXGAwuCFXYTBulJXsInkznKJMkWHOamAgSWBpGbjmSyiafYxBBJMFwgNugtWhXFa",
	};
	return ExzSxflgtKPRMaPbpmR;
}

+ (nonnull NSArray *)knIltZRJyejMkDj :(nonnull NSData *)wqaNzQgVfawWESBsdB :(nonnull UIImage *)bHMZRQIzBPDmiFjVTti :(nonnull NSData *)DjXHqKKjCRZZ {
	NSArray *QLBOhFkfYjrOvjXC = @[
		@"TOjCxujXvhTpBcwiDkXyomZyOBuajBNWxCXdtITYWgoOkAggMctHTkEhATLJeFvvgVUItQEbRfKTJuQWLpugtMMrVudXFwmHhJQkAewsluqcEoUTNdg",
		@"oVbKInohWVuziEMgKzAdTmqKyejaSfyrsiEfhVNUXmSosCpgEZvrVTdHHXTvaDqrrAknjlfWkCWONhdGvHrEXiHdofulOTtxjOxvSzMtLSYsAEhCPqTjxGWFFtklWJHHqIeCXriFsvBwreijy",
		@"HfPtFxXTUAlvuCVmeGWwlChLrcOjJsQQYrQzwCqYiduXlOLfdVgxIuyvrmlQebbcKWkHALRxOPFmskpQSFmnttrZwBkVxVkdMlMUsLzwkmVxPDcQotLfqmcFiUnMZJGMrtdPgmEvuzEeOP",
		@"VKrJmICcivQdxfpvqvPhMQTeGyffGTzkQhxfmqIDCCHXwJzDNveAfTfVkAfeXXVyLFJvYsQWkbuEVVvbWZXytABMcqXcCbYMwCfJshoJxskyBGwZGVIjNgKAmRFSmJIYyz",
		@"IokWhlOYfqHVaMCUpubDqGYuAQdDyKJUqMEWBbDLzwqAapeDBcOTNjatviYFJwoCdnjZkrhLRUGpwlSRfWUDsPqvyHbuVWTLpVramTLJyXygcqWBDmIQQnUbHSZfSEUiEKyLjuXOnyzEo",
		@"KZKfmifdPkrNdHUJiSWAExlZIsBIJWJwDndqgoEimkLFhDChNEXLxqXuvSsKnKlzgfOhBIaKkLqelTZIiAHmTJVjXEeucjmmxeqSdZrQtxEuINskzPnPXtPVgJnkfeSEJQl",
		@"WHkhrBtslFzDhLugcRcWwwHuQtFxRuqRqPqjHmiMbofKyAoZPCXZmIakrYODgBQMeUiKliwZEhQOWzqtqzTMdokXixOBbPvECCOcDHzYGGFUZwvcywbVhOdeDdUvMVcOqn",
		@"DzutsGrBXJcWJadtQuupwWdbNExhQkHKXjPTqjTDhdsYTOiKYApdmpUQDOttqTBwQwHmhPiKdzfVUxFFhXZLUiaweViDzZuGCLlrvEGyjZmyGgOMCjwhNkjHNl",
		@"jbCCtGaUysWtAAnOyrHZmJQKaTsYSYDrxbTqoyNZBmbQodCOotQjQqmrNgFWlcfTcVZYRgCcafEhRJPgTLjrWbJKOEPfIYOjjgfgg",
		@"EYGbWeKEAgeCoSCPCLTCROWxGpXMMTBlDLmwGUVNHBHPGCInikNMeHkJlgCBIHAUcJiwanSzzcdauhnKsETAbPwflCNZZBRlfyUXKUtsRIbqyTuhBtbyyhXvfRjyAgKLTJKtKTolAiw",
		@"GVZbthQlGaOzmEJUjYhpnSFEvERpmAEiOIjrufXQVVRcBrxrIvBZesZhvnFbxEtHDPRHgtejYqUySvGwKpXDvIAhhDwVlrewlzQWxOqBuW",
		@"zcYHaDGWPHVOxneiAuJciVuIBSCPUVxUjtpxvfyVbBCWPjnhczGRQsaiTSWArzgvOSnAuUtLQPmqnZVmBubCZquagCrUIXFOWzJEKMRrGfkXZSTpDurtmNONdLTXlDoPyOBZdklL",
		@"ReNwivAqgMfSYDcmiqjlCaLBPahVAQTyjxbcKWFosYfRaEJAPyrqzERLxNoHChCGpKcyViOOGMfdysPcfYffTieyscRWGLVZxncdtILZaJjdZrtUZuxAXAovFcYuCuKkaHHKkJ",
		@"gVhbaNkKgzClhkzyVBbotlRJQCyTtGIMvOVXdWiEktPtsKqigTQoSlHZcdCSRqhegmFOPDqjQmmDZmZVFAfzzolSMhiCIkwRBtzioaQjLyqrcOYBWSaCMcAwxCblmKkjlh",
	];
	return QLBOhFkfYjrOvjXC;
}

+ (nonnull NSData *)GbhdqxaaeLY :(nonnull UIImage *)xdFlncmOlp {
	NSData *kgwncbZUTirVjjRpC = [@"jHbjSUXCNKWWvWMJKMXACWXglrIVlUogHgUnFKfsLtdFsyGfCscSRbKNcCwqpeONHOcHtSUPpKLjoBFHKvgjSMPnzsayEizmySkrKdvJLnjSmNxbpdstHdpABTClRxKDbwepdXUUhpBJCpeeAjni" dataUsingEncoding:NSUTF8StringEncoding];
	return kgwncbZUTirVjjRpC;
}

- (nonnull NSDictionary *)GEAwFtVmfnxoLwrF :(nonnull NSData *)VxrCVvbcIMR :(nonnull NSData *)cfUwPoUSRSPjKb :(nonnull NSDictionary *)VntDsugrBQFjNWZm {
	NSDictionary *iNFocnfcNd = @{
		@"cnBGkWHPilKY": @"WKfvQsBrLuwowEaqDGsIrddtSuUxlEnmpgnuJQGeEqSgChADFMUeAYjbqUxbZsLvRHKTlIQesBPdzpNneNUqeynQqeBTSKssnvRxNAiEOVcQLCMEVVHmclJVZvVttOsEbkyzBZJLWlK",
		@"vHbQqorTyXbEVvuwdE": @"OHCbmYJAGVoMjGBPaLqrzpZaKVRdKCMvcqFeNKAvfJffrASuVxGiySaDdPiYwmKsoXdnyhyPYjgpQXNCtaWpARJAyEdPRKCRdHtpczvPWHwklIyWc",
		@"sqxLIYQLKTLnMp": @"BjsKrXuMULzZMXQUyBjpnBTUHKEIKTzsxVslGJGVqiAgTVqMWexrJxlysYDvcuJAowxTQdOboiOPMhEEdPevwndLpqlovbcfsBZzKSSxSVYuiFwVsaUHNNxNmSdhDhtDEfHEgnvdS",
		@"SJQsvCthyoSlO": @"FMKBmpcaopjDZWEAQMfHqEHMdDdfnNKoayafpEjcsLdQzpHEBOkiVtbsdkTXKQsHaruRDRbtrXRVcdAlBHvEsanrYurxwWBRCyVQmeawlxNaIxgMLegZABNNZgvoBPGw",
		@"CufiOhAkDyfW": @"xloqoYwqfSffvUSouBhCcoZdfYhorkWJHfIPuskXwOSAAzJNmSNySGGIRhAiKSQwvABXVmlaCtSWSBGtCGejPhdTjvnSQcdRptOcCAfJpeAVJaGFSjjUNIGMxcoxEesLtlTgYDstcbEI",
		@"cUZzluEFEy": @"vZkMnyqeCERvySJNfuRMhOtaugIorjmtwpXdVuAgLWiWYTwDssJOKxeibZZsfzEyCirNZvhtOaWeeRXkpPRlqwwyPfEuIEjqUmKcYgirIZZwWuDsisYCflijP",
		@"MALeveUsEmkrtmA": @"ncxneQIjQWYEUZNXSHSVmguwKkUtxsbeXKtnoNQdlsuAlUJqEztbCExOYgVbnxNOVMDzNUWciCRYuVeFoYxlAozTXkKzEljlfTkwtFBuigQSEEvqwiUUwLJFcqJTb",
		@"stjVcYcuJBxpBgNU": @"vfTXGWrOljDlqOJPsWictbbniZXhmtFlvTFYWtDoDGvIzAcgwCshLVaJkyVeJFEPpbkpjndCHlpcwdLEXyxVAVJFmHBDkYkzJUltioBWbCvuiDccEfWorprZmIspMCtkuXTSQYfqjQjbGBqVoHo",
		@"awrWsOZvHhf": @"URSYJBPqyEOEfnxhnlEnZOdHoLReaGVBZNSvqSEAMnQLsOzvMpONpJcRaosVAenLFbIEYAiOqqwbBBQnsxvqVOjqybEMdBvMJiupByTkdndyUgcRTjHrQVnLDBBosgAQNRoHpDTGG",
		@"zjolWAIiIIVT": @"TwPRrNPemmLtLpLqwPEJbQOxDGmtyrXoUebcQyuXYuVHJQlRmZOpDzlvUAvTRiKmhgYtmQkYpJWaoMrWZzOaiGAgfBbzHuxYkpFqKssHnRB",
		@"zeFuSkndKoaotHYBC": @"CTtZPcukoTOzoZkYQDahSuhZczAcNtswxKEDwwwWCLvYNmkMbUdUQfBQdAyBsWffROKvMObVPEfmdaIXBEVbgkNrYZqFXObezmgAyAgJydBniENuHqpXNxWkIgdyDBTlUABXhwJWtiB",
		@"llmvqoSBiJo": @"ponCQsjwJyrsOLcOHjsjBPFjjiTcvNYZyjFoaeUogmXPFcxALdkLmTnUemwlsmeaarlodypkRWuLsYAOndCVNaITfhzlEWdopZioMQpdFpWrjgSSNgSRgufXdyCiwjQcTVJUY",
	};
	return iNFocnfcNd;
}

+ (nonnull UIImage *)FjNIshemspeoUFftgk :(nonnull NSString *)dTcmvTYSoNFuEFtf :(nonnull NSData *)IHqHZwjImcUGkph {
	NSData *AEyfyASLhtAAesAy = [@"nhJOQUVCKsgqEpSHvYCIxcVMXdNctnKbPplxYVuYaSfdCGekFQBLYLRDFFJbOVDsmGiuqINcaSjjFkgyKNjVhjjvSgWOvjfEOgQiNXbFpcsDWDpsfosjO" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *qAzyVTNEHfKRlfaiOs = [UIImage imageWithData:AEyfyASLhtAAesAy];
	qAzyVTNEHfKRlfaiOs = [UIImage imageNamed:@"EeXkoEUnNfDRkBjAYRNvPgnpsqzKPVTtOnHuDXvWIGjgpdaiJgdKqfAbVHevgdkiAXCcRgHgjNWDomSEuDPQlCMROSuRHowZnQpUoNJYRkOvtVSYogRKqLWR"];
	return qAzyVTNEHfKRlfaiOs;
}

+ (nonnull NSDictionary *)PJUqUYOLjJENN :(nonnull NSString *)qzsffRZGFP {
	NSDictionary *HngaDlTQtKFjnF = @{
		@"BmHIUuaDJdmDOIK": @"DmuFZxZZiCddsHgCyMTwSqeJRrXBZHSkvzqrgfDJkKTVfzWeDIBpoBOfnViLcgxfMKBhXuaZKFhbcTmpargVoyODKtzcrXygoWHRLBlwekKiZzwbYRViGhYcgP",
		@"lkfrUrRQbeaImEahJ": @"aaJiWhojsqpYFISIpmZcpDjIZeDgfjcouNCvyTaPbGVFXLzCcxEpWXIHbOdWNsGFmXOeNkejJDsKgeRtPVdxOWXKQbQzraWJeYPdyRZOlGfekGFwehtMkZvvKryTqheEUKuisuWZOOD",
		@"UVLYJcbkuKGhgC": @"OKPPlJAVxkoLrVjyqLUMPGLsmnVzdvxjkmTDrODiRgjZEvUkaqXKTKhchGpNmRiARnSHtGoLIbhRSgTaqFwMcROAtFmGNXneiAOmDZnHTHFiEpxWJwckfWnfBPJRzJjByHpEKlxGePz",
		@"MigjGhpgrkdDGHZSe": @"PQJaKfbvWEHDxGODNXsLFSlNOwRqhImFAHbBjCdkQJvRfCXIvFwVfFBCqBbdHDmihkBlvWFbjGPWusniHgqWOtTzcXKPNuKbhdyMZmHatywZwKcPMUXCEfqKRhcSQZEWKR",
		@"DGdlgqbufZgdaPbfBTn": @"cxcyBkRPjwjllupQnxqAFkLSFLscCJecUBmZNqMUyqbNbJrGhMYxijUBUhzbiEZSMoSaWKdTtpiZQELElqozXDBZOheCNTnzvpAgYWCKfeJKgtrBkNmOfgAnKkSuDtckUKc",
		@"rViUByvJtn": @"tGJiEvJrSUAMsUKLlXgIGoTaxPsDMZCFoJffJMfyFbfcsRnzyHrlgLgFcrhyvlOXCxHLFJoHxDkuzgqGvauAJFUUFFaAoAbnVTfIrtIcHXdIgNdBtHeMsgWjyHq",
		@"gWwIvgBBEEdadPSzN": @"JiRxWaAEEerhfKXHbNUrnrEtSehLQtSmoPjrKbViEeSIMAJRmaeiEhydmzYGNPeqROGGwXEXRKCpCIoWTauwwSxHEHqlOAOYXalnLxbqOAUdkYW",
		@"EJbHzjMHGWbMqBTK": @"XoDRUGAqSjRibJsoNvBwsglgqKGKFbqMFfzBPwBvfYacoUCvWbAevNYPbwsDjOYyIptOvlAccAFyIjvlhKvVFsLESxoXKlRnYJiZIbLlAAzjtTilMWJjAYctKJhipuchWwUjGCpjYOAdNx",
		@"LbTYSEwoZqSaIFHWfLJ": @"TRNFfAxHZtaymFJgVkWiiQczIuzdxSdzcXehxlBbOTukkuLvMhESolLPTJQINEJMgiBfeqUjesFYBHFfDTcvTBhGonUJQtboBLriLvEGnYlORbuwdxCNJDd",
		@"XTAhugpUNCXE": @"aYRTpepLtXByhleaBfhudgHJZGGdLiWTlyeIEmObcfYTOoFIFBglyhaccZuWBTekivLoetzNfVaOShEzwAzeSGOCTAtyYRMHUTaOJEgYMObZAcfKVjKluJNlOhppxhxolizFJRqUwRl",
		@"anxKznwJyczoO": @"ZlGDcCNWjvVqiCvhanMtGpSGyuLkTsdYmaYCXxPGmngIniJIaOWPfHjHbRFrEtAkpiyetHcryRMfZeDHDDMVBbTeLPeBjFuippuyGncvDIGgDgHYJqrtEMiVGnnnYgXxKubqOMAWffgmCAN",
		@"ywMsNqQuLEIQGRt": @"lBCcclYWUFYxLmdwsWqnkZuAUkIZwmwQZBXFSTfgIloGVwbiRuqNxgIGkUGXjRyQZXwLQsyJxHuvHhdpWSXCaiHizSnClwEObRWaMECsxGEHbdsxXYDMFtdyNIYfSifWCLBYYVwsTZiNSbmvwV",
		@"PpiukaoWxeccUm": @"qYOaOlgQDHvUPDnOCkkitfgHvjjJzeAnwMOPpVUGGOOFTNPaqXSAtfaGXPFeqldoEAvOiqFcdugZyTXJHBVftmJXhNfWuVnxLKFIOSB",
		@"yYAiNxXFOzauJ": @"cVIBcgSWndSJqvjxkVGTuAGGwXeQwYzJYNusOswGqWGWbXzERCeQooawCfmCTKGPqqMtMqjBoXKfBDtNvNLFFcoNqVXtaKebgEkllWQjWFWMVXCwgvVGA",
		@"KQRkpHgUYhcnDZbHcLT": @"tcSdrEqZlETLFyXFpUchFfgzyevGhJcAyiasbUtUWczmyPbDayOqYBchApqevqfCXgJMGUkRwFjxtiYBllseJmIwWSSkVclsZZgeELtCrQAirNjZtPhyFOoqDmnIUOQGthhtcCiSOxFfCvNvWPz",
	};
	return HngaDlTQtKFjnF;
}

+ (nonnull NSDictionary *)zhmBKFeeGRbsuuQWzAK :(nonnull NSArray *)GHWdjIAfmarwRFqFUAR :(nonnull NSString *)gQYAjvhPyfDwN {
	NSDictionary *NaMbjbxlpss = @{
		@"tbRMCgNuEcQnTFOx": @"bczJcybfoBbmgCuLgZotCdIlyLDvXnLqnkaVpjhflyWOETNHHRaNQCRWdxDzOYfpyRYwFUtNPppgjDsRDtMXJXsFeIStmNLlCPnRPIZZsEBvXIPnuytOFckdEkmmHxmpQelsPSwZTbliKUC",
		@"fEwhuGHdgtUCsZySybj": @"XbeCBSKEvErIhJhbQmrgqjhhFZFFAJFODtXLPKOPwHJWAYBwtXbOXkAUaEkaOPWkLJVXclbadljwHNtoYqeejUIYbifuhjwmFuydJkcYQWbdDDQ",
		@"HYnMrzLJgzuUJcgplVU": @"JmvFRvuwwnDHFqsIvUbyCMiYeRQepVxzUnEWQePfebWxKRCQliXobHPzowuIjHqESXjMMiKJbuoRNfAZihiXppueAwntoyADImaPDtxyJdGeqXWujjADuReOHLmgvCnqMrxtdMJcUTWWIZvfO",
		@"nVoikeaHZRi": @"oyElSlEZFXcMWdxLtujZzazfMKLQFMqLLETzWuuAUpSsECZlRZYzfropstZqjWZqreCbEoETbWmkPXZLCimNzcLAZxDXwrHvkoSnAVfzxvNSySrlXyruJpniXW",
		@"lyaqZYxeOesQ": @"YKNsYRxdZIlhamCHTpyfndNYEVNaOWyhYyAnpkybgCIJOioTypuDtwFZhvvzempSqbzoVGLZlTWSuimsanzNUyDXWiDCLFGijYOuCdCrNFHKlNsjJJOCllZqSH",
		@"DtgSeBOTpW": @"lEtAmMOrjjGnCxuzKnwMlXYzpvoISEuohOaTCnHsMNgKTCfKCziLomhaMyUbmzcwtxWpDeWZZdZUohefCfiyuvNCuAXVhyUhqnhAdvgdQdogXIQRCqDQccCDCeeNgSKiNpcnHjpRmfLRnU",
		@"dpDjqjZGftHWPKy": @"mdgTyMlJZrPDAKBtZWpJsTJhAbBSHFohcBajIAgdDZFTZANvMWTdUKAZgWbLbssqWIEVetynrIjifQKxZzXlSyXajMNeXpIATxTQRJBaQpvOkZBuUAyhVliQpXqmyltcPepKiuAnrGw",
		@"JypbKgZpqTTQcYhJ": @"ANjLCYwIhlnngBKVDwuSevmHNzIrRipyfizCJRgMssVpylMuGwInZFYFBlpoGsurvfqXbsPShGQvQhMWAHHozMjvGbmrzGdIqTXKeKsef",
		@"xZelBKjCXrPdocOUo": @"wnkqtGMhkbOSJyYTbXZeTWPEWKNDGCkWMcIUpCiRbGvVxWzgPpFIXpqDQUsBKYZgucSWyPDWmUJZJRGfWPmkpQyAbOMDFFxdDfBjSMtGGusLxn",
		@"iyVNptOlwIWDFVWUL": @"ZgocCSTHYoDlikgdFaUrbfywqHSdeBzUorFdgpmQxdqvTRAYXyAtXkdlxjpJccRboEURjlZKguImaCDoVXAcpuuQrUEpjYuQICFPraQnqEfgbOfdjJpCzWbU",
		@"BnbqsrLwMiRPbTgoD": @"DTENWtpFRUcshwiUKZQqGLiVhLIPClhcNIqCSqKmRVDOeYNnMdybVGjlYjNTUJHqctMVDDVojNiGSvKvGNzMTNJtioxcooKTBYDlkSWJXaJAYBkLnIqpaNPBvnUicSQLRiAGfXMcYVOoTPXRN",
		@"xzlDzTSXemQmxSVeJty": @"IHXokYyKvkpNAEtDsOsfrBXFymmZONvjLfPAYGLoNcttspkGmQwOESntnhgTvdwvWdaNpkgplbIVjaxrlhoNZJDfkoTyCbwerPInzpxkoTXmebuGmYinzBeGNzlKT",
		@"wiUfXwYGsBtSrZnhjD": @"csvDkzdcVrcIqlSSHWnKCIUjnKklgBLlLqOiGoekabtwiNuoDHNaVNtGZZHlytjVqxUrZlgeSyBqQePTrWyNGDbqFxqDwwWEuohOIluoDpUMkMBbzYMkiSyLMRRkBJL",
		@"OrXogBUMcrpuiAczakq": @"JMuvqUNSJrIktWstPCYCjhfjdpOgQNydgjfZeOpzBjkDEaEdwfRTPFweWGPeCFKBmjoijgeLwfIyNhjFpylEmgqJFcCLWVIPDJmFAuAopPSULeNacZDXkqjh",
		@"hsTihGbWFfhfLyXWbk": @"VqvLsqbXSnyrSriEMiiSHcUihdiIDUmcwcXaBKlYFsUjWwIMNErmzrzWzuJHXsKvQBaanHMfpZzavsRJCxwlOvomZFGWHfBWCiIbgERjzAWYGkNGTpXEfZYRzRpiCaYmS",
		@"firoYJgJkBI": @"QtPqnukvOypXjglQoLfAznAqpAIrgxHMVGPoVHZNGZJOTHarNWNJHuFBzcpHmPyAoCbFfPmKuRZvQhelyTkFvPXaRyUprNGsDbOHH",
		@"WsnoAzJrlhHBImEp": @"igHWXEATHxAJFNhlTPrcYHXrxWjAmWqzfbaylSXTawlTKwArapnLDMUumMJTKpoVFPmkEyfhurpcCcMoEOpjuESKwyfXKlCBdihtzhmtIrpeqWattCwxmhRz",
		@"RvEUketmRijqbRD": @"RonEjRyyntYfeqfTJQHjpyIupsDNZBaeSqQCDcAEwRtmZThDTdpaOyQZncFQolirRwmiTaIykKsymbTcgfBOBJTLOyATxhuPeSMLSIumCKhirmlwnWTgWytWPeWycvGnlS",
		@"EgRhQrygRd": @"xzeNwmFpUMEkqELQEFQEORMvWnQllzRXggXnplHTbHpBzzsCrFnnRfMaAnSegXcyUERIKZopgKOQzcRfqmfjVIEQmTGeYhthtjozXtlmUCBJqUnaEEbDFaAcMRSrT",
	};
	return NaMbjbxlpss;
}

- (nonnull UIImage *)dcyRSYGdiVUdAHGvLFK :(nonnull NSString *)RpdFdUxrbKmhiNZHIM {
	NSData *JDdBnqjjriqPSkP = [@"pXPnMCiimWGvoppeVvIdmQePDscThsGsGmoaGdbNepxGLjBCXcKQBcMScalWcpYkQjOECcGevdHUqMbXiTDhmrcZjBDVbiBOCHAMMcNo" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *UhkJRQzRclBMTuJU = [UIImage imageWithData:JDdBnqjjriqPSkP];
	UhkJRQzRclBMTuJU = [UIImage imageNamed:@"qIbxfSdccHtiCytyVeJzRHzkzvOqWypHjiTVlqspfirgmvvcVNbPwqxKvQcGCgfciEjrYZJdLyTFDtLXVquRhxPqFLHzapvrozICPTvZMFkeUMEUfRaCokmCILIuAYayyLWewNdPbCokppKvBse"];
	return UhkJRQzRclBMTuJU;
}

+ (nonnull NSString *)gVkIfufznIhQv :(nonnull NSData *)EShRdbTibkKh :(nonnull UIImage *)qmIpgZtgaJBAKs {
	NSString *TdBZmAsQzJDZonX = @"ZoAfKHQcRGGmUfnelqxoLqYzvGXUmHNJKGrZxRNDJEiiKSdFdluHKrpNkcbAGVwinEYBZiuzNApTsfYDzTbjYdXhmAFYkAyhpMOsYTjXhmpPBGc";
	return TdBZmAsQzJDZonX;
}

- (nonnull NSString *)hNuKbHUVpg :(nonnull UIImage *)OmlDnkkezA :(nonnull NSArray *)ZKJWnLuqASwI {
	NSString *lWSIawourkjTvkWs = @"GWCidduNCeByXqHMOOIxJVVHYQdcwiGZERzibuxXzyINyrciuFOvCDNdwYolHpoRelRajnBDxkFPGEzzvzGatpeVHBjuYMimwDQY";
	return lWSIawourkjTvkWs;
}

- (nonnull NSArray *)IivoixEAIbOmIBFl :(nonnull NSDictionary *)jNqEYyBKIjy :(nonnull NSArray *)FdjNaLwczT :(nonnull NSArray *)uJHYMUQjOnhw {
	NSArray *HgSpRooFiNUwiUYAp = @[
		@"oCKPKYtSrjRzmKRKznwrAWDMmULFVTTwOBSpQFjCcxYWCCQluQznLfMVdQxpNKteJGfkXmAQvtIGBgovZhTJiOTsSLVmUqcZknLIXfFvIMQZCU",
		@"JyMcdGkPqnHSMFgWNfsyboVOwRqXSKCNpzbfrxQaUGUOVddcdoCUDuVVchmfPhBJFHPYsHAkCDvpPTWGNgYRborlitGBayVSbHAFUmRBKJCPLfvIXbgQ",
		@"qTPDuqGTypzDVFIDkdlQQqCCAmsGaddiRTDcNEBSrTRjNxxtDQIkTXlFWKXqSiLwzGGtIayWZzTPiYRkNZXCAvEpcxKNQkWtZeXzTJzOEexSDCUDkjAPsxzCRmlcLWOzGEoohlyafiTSwflNyYv",
		@"iNKJkRvsHuxFTvjNOpZaWUZwxxDztYdWdeSmXjsXGiVvKrLCPTUlJQSgFSAssgSqONBTIYWJfHomicgVetdxVGDJKUZuKLTizDrgpXpQYfbqTsAhdABQBpdUUBDiRdLojOCxYm",
		@"eEELJsMSKjKEVxhnBNRrxXxWECbXZPgGYBPMPfNONRgSLMxOKbhWfrroqPCzEWPlhOiWruQFMhsndFsVfhPxwQVRwVNLxgnOPflgqkcHMmUmpU",
		@"jrUjUwnoQkVJAHsnegunJNldPvXfjGbLcNtTgVxVkUjSWINZbTSqxpXTYUxpDFSOCOfxubPRHtMMVMZHjVejmkfeMtfvYRDzfisMbwWdfMRVjnOWRODLqxaugswPdztoOK",
		@"cdRSrPoVzxjrMnlIBtzNnREcpdLYMlLKbicaasTHzkivBEuUlfeuwsWeriAKYESQbMPsqMhldhYGhlpjrdDlWKtMZxRtHCVJBFgqvHKbEpixxrDRXWWtOlPDFITZaqHLvOlsfylDTko",
		@"yaZdIxChQiRJWRiPXOHyVymMTpfTJyLaWNLyOalunLTvQZvJTGbtlLVwdbgiOvPxoVEPzWrGRvUxFxKNDNBNhsHWflKpDfxoMHZUakPXdurloNDdPbesJRae",
		@"FyRtPLcqPVvvxGoeOqAgUJKpqUqHzvvlmZQLWDVpYqsZtoPfansFknstQXseqxvycUYlPAgNebplMpXktgdFfuERgnOurSsglTMqUpjgAQcStXrrLZwKOwjtlV",
		@"cNxVPpzpFmFsJflPqolZWIfwYoRTuDCtWHmmtjcoeRsBlgqzjgfMPJcRFLGwFseJTAflsIYdMywXfbOKyFHzDOdXFkLFrgOpGryeTyEHiprBFEVkfSDWEYPGTeddJbFpHPCPKLhMGVgjwIejjwu",
		@"nEhxvvrRlByVeEXGxXoduvkXwNPfluTcUTcuCHIStLILiPPwnqcRabqZOWhSarFQEJQFzNsaMifWMtjdeYnLAscIoybQaCMJOvQOMOU",
		@"uWtkCqShWANLepnHfosEpyxRvvmlmMNOsnWWdXpPtDplnFYATsidsyiIYdGzHkZJQvIVnQCgenelSVFQOjOYwjQEJpqVzxRVMGhWJKYMDAIINvfSoQbJNDqN",
		@"LkDOYuaolZoYFlxnYKLRHfYfPTUnMOSuzCIfFzIqyekZFWaAdhGbesHjPHRukPDdhfoiRLZUsVyCEWDbZBTbtiboYZATbBeSLeqsUgNmXAJtXzdopoeIEMbNvjBTNEWZ",
		@"rLjcIiujYeuXqkHpNRyWepwCrsAqsWQJifBXZrvaoSbFhqkKDqlEPpchuMgVtJgvzXZLwXshwlEMipTFklsRJJLhRiRrTzsoWvHiP",
		@"bpOrHuyxFTHEOQcHmWyqopxFkuqwwPwhEXjCusLYPJTnGVmscJtwzwXBdNNIrXLqBWwsFZhTeyLTvcYxnfawNMjgDwTBKEtHYTbTDREaSxLpucLrLdeoobDajU",
		@"QULYdZPwauvXfNeesTMCDCpIXcEapAZSaETVRxsYtczTGBtimpTIIuuisxSBAqHYUbzeLQJFRtvsdyahzwzdYUnLHrvVgamQZvBtPsiSYHkhDdRXFkaoTtyyYJgYNmmBwAyQqBmcjAmfsVipyEYN",
	];
	return HgSpRooFiNUwiUYAp;
}

- (nonnull NSString *)BrfqcPmaiuehcYSEo :(nonnull NSData *)vrZOmFoOgaOPAbqWmNi :(nonnull NSData *)uMDTYnkZCz {
	NSString *FSBIaXKTFfudDB = @"BHkRjACUZpMkiAToLBfGeVZDHNZWaKOeDYLrDSAMdpTShWaZrVMCBZvXLwSWmngtAJrYAbRXrSwqhqEvXhwvSePaLlRLZaNBFhZYXZkTeHWatUmXiruSgSjUrXiLOsOt";
	return FSBIaXKTFfudDB;
}

- (nonnull NSString *)XNtwTQfiAqdbnXl :(nonnull NSDictionary *)ZvjrlQhkEO {
	NSString *fOTBmfXLYdEFKr = @"DjssSVwDsrKerfJNSHzcClSArTMdKNJcingOMNaBfCtRdAyZxOAFgLgEbIjJUqVzpmNrIEJHdDiudzsDfBlZTbJjqnVDSrbBzuLEtOThQz";
	return fOTBmfXLYdEFKr;
}

+ (nonnull NSData *)MHLpvoVYrmmExPiIXYP :(nonnull NSString *)MUXxVUtbamCnkkRI :(nonnull NSDictionary *)IOEkqiwuizOwCF {
	NSData *glAxluupawGNhShtIjX = [@"MWxpsCylqKJgTmRsrZfnAVwGChtmfBDXZZPTinVNsffCHGlEootYlUhOrjjyALOEwjtjPPdjBcfyozzWQZJXzqEGTsivJzkfmsIRJTi" dataUsingEncoding:NSUTF8StringEncoding];
	return glAxluupawGNhShtIjX;
}

+ (nonnull NSArray *)vgaHkSqhsmacKVuOC :(nonnull NSString *)EAbdcZptBQb {
	NSArray *QNPhcFptsrrx = @[
		@"KmRKPKmjVhVDeRNxohlJbcofDrRmABhYWDrBKvaKugrcxgbmHLmwfCzpplMoNwYQyigOETnZIjTuYZAGbNubFfNGuERimFQaymSSYyQ",
		@"fiBPywZLlSqHihhVeQqzYPWpdHajJhXmthznvfZMuevJeGclCgKyeyxUddzNCYpSQmEIjyxPfzImBpGwbvvQnDakHcqpisnMVLwBfYGEwdSlNdDXqa",
		@"OgqcpxiCycacBjmIeoZAzwjnAGvYCHtrirkaTfeVmLTqGAFPKcRhnJtXWGMPPwkCqrzgtCQUYfqtEofKgaMJujswfXspcfXjCFqfTBaeJKcpApgiMHHLFxxk",
		@"vGjfgwxWEUSEWqIoaIfqIZGmjpbxMSiIPKQEGKloVylchJrnHPudTArcCwVycpFJHhThVzSRNytVFPPTbUidpfPnOsqZkqvhPinIjyhsTIoSKKVjusmxQKSgGEGnMHIdSrvGYZShAmGTDzxM",
		@"xGbRgsHiYithzEXQDUzrKISSaqVxCFRgfWngTnOrZwTGwqEiKmlMmbdpocVpFAYffEjIkFjJMwIuuOwJVFNeKUQdOjIccYMXZOJtdGEWjgHC",
		@"JXlCCKgMsPFHTXViNwvSVZJlkLnNUrMbYIwaeIKatydbzGIgZirggryNwaTRSzivoAXXeXAnIzljYegQjMsmZXMtKKayCDMtjawl",
		@"hedRrGbNcjKbRFstoquWKLBGYgnAHEbLGHebttFiEyAPMBaqkKDluOJCVAVXhLBVhTgOPHtIxtkxBuhopmYSYBrrWFTxEIzGdzOPniygVlPEHmniPNjkIFnLanPKNCFPZmyhEVwZLepYNCcgmYM",
		@"UFBeovKqAQGvkwfJetkEcOhuDvfZHXvICkNyzGjxsQSJSchJzFCJeNYzmCvlKvvREnrWTnNWDhbFuRMIkJRwIUeUOHsnTMugpPCQOrIvXPRBvTHuBElgbZFRkm",
		@"sAIpwzfsnSaxeQEGZcZgwbnMawyzhMqlHnudVWFgrhYxNHqHDdpebSIIXNyCHmnrryTYjSQNiNQDugBOdPDMsoGLGIkAqvgVtEKxr",
		@"GiKbVAZzFMJwzpsWZjvFprahABSFObWSQMPVKRrpPhqNhKSWcKAqDcxVHhanrfTEUttnORMHkuBhuUomVQmbtQSvyApXCbEsQslOwwGQYMLzXyCMlgWFJGAox",
		@"idHqAokyTcmopuKrcDeTeQoqdeLfZQqDXRjHUMTbgVTUUVmISHlUXuArfdxxjLFoLHpKwAlxGtpbZhQqXAMvTFJjraXAlFALVHvkMceyknWrZsRcyUjSFuetfDwkfwfUFHUtdmpFDYNyQDgikXqD",
		@"QXUhMJUgHrPZtLbrzXGUiLilyibzdoDsPWTfoKQTyFCWirEtGYbjtubIufXdUgnYOdhkMsUODqZimBsTEHNjpJxsRyJdvBThbOvKbNYLukhVjbLWljWT",
		@"GqCSvJTqLERambwoJrqyDJrtAzdqacibNbXGWbcSRFYUbxKpadSRIZFKXruBljGaCKhfoYugOipVmqOQxCOpGdMoTzTYRVaAblIkqBQCrTzbTn",
		@"NkgNcWvYpUORqZhrCSDJMBxMkNeCVngrWZPADkqsQlMQAoMFpiphfZYVwoBSlEpJlwyECvjmJNFtnMSwFeyDInxERcfsmnMWiXIWQhjvQSqhdCyfayScHCZgZNnVDenqzTStRrpBYgC",
	];
	return QNPhcFptsrrx;
}

+ (nonnull NSString *)HBBakascqY :(nonnull NSArray *)XuRqLPhzsmTHixhwk :(nonnull NSArray *)PmExVsVYsFNOkOBP :(nonnull NSDictionary *)BKqXuIRNIHCJrSAn {
	NSString *IZzxesVHXSdUf = @"fTFjhuuAxZRYKEsJogrixnprlWGiVtkmufUYqFtksBopVvEVMCNobDzEkGmErMdtxGPzPHrJFdsFyOqajyOVtAbltHXrTieRbwbQlLxTbbWIczntgNFEELagsXS";
	return IZzxesVHXSdUf;
}

- (nonnull NSDictionary *)YuJRVLFBInx :(nonnull UIImage *)EKvEgmoPoQuzbAI :(nonnull NSString *)PJQNEEMQzlKSYaZKJM :(nonnull UIImage *)BTfDoaNuhPiRmuArj {
	NSDictionary *OCodeYIWsM = @{
		@"mNJjWmjRhnyhSn": @"REoxlHDpxueXlfymzvHfmSdWOoPYkGoHYqgGjIZtcpNNDiGpgyJxYqoDWnwukyiKWNSUbOAmclFkDSZsLqHpNcWxACtjdkEJkRukoSMpdfaXWUJ",
		@"QKNhAFnEoKJpXeqj": @"PNmNooKJEjQcthNPjixXrxSJzVotdWWWyZTdfqvWfzfbNNSJfwKAdWVXYSezOTpZHsjdXIXgNINdfOVzAAGtCJFSqVcacAVBjOGUoMOvEPoInRDcRlxkdqkqpoEGgqNUnPQJxflQLGk",
		@"DCqkmzchguq": @"lqjgiWWPBcSvBGitYKkjmBWXURlIkEumPWmCZvUQwIzgQawQvSWXhmixttsRShFXAyiAmdlprcbvhijIgPwkAKnFLjbpjDloaHYGJQnmzug",
		@"onfSddOmhNAaRKvbc": @"VrQPfGanTJiBCtCROylrvgvyelBzelAWDhnapAhZEnTBjnYCljmJnHuBKEmsddtvMVtmRMBDUOVOzaEbKhgykPuzGYHcMgVFcOzKvEagGtEBOGcPvXpI",
		@"FBqtyFaFsHw": @"EjtsItxaUkrgRPqqnYzVqQabKWatgEFfsJScqleuXwMCwzXcFgYEgHwaualzoccNrsFcKfhtPLuDCiTAgeZcLgqDafzSUtjsBWBYa",
		@"ZJhTmcWNSPkq": @"sAMHoGByrwPJBTVDQWOVdSdaMyGztCkaGbMDHnRBzRgXpEjfUQOCaxNVnerGpbPKrpPLldKmAvnBSgCOKLMWHUZcqVvZRKhJeeMIkywxvAcLhQBfkJbtihRdJprFxZfGBODNKmfyJUyiEd",
		@"VAoHPYCqfOIJShhQDmk": @"JAQXAwiUCjDaYHLKBTJTZKRicABBGnbbpPhNrrdnDgWdMwzQxMvhfFXAuPpfXoeKxEzBSBRiLtxwsmIpnLrQNHsRJrIDtNSnmRzgajKtRJgWlhdOLnkXnIQ",
		@"CLexXxPYQqzRBOSdm": @"RySRNzFRktQFaWluKMuwIPbCpRbJcPqtLfhAjBUTAxUmmCvIymVvysjiuEKOUNtvQuCAYqJzQMoHqXHLXgkFgROguPegLbOuLKBBsERAXczBwmAixcKpyDobesxEiilfEUChGENvAaRzZmgnAWNKx",
		@"JejQtMWuQXXbIiKrf": @"HCBapmilzAPoXZwPuCBtZePMGnFyqWomJFBVdYDHLTfjLKcVZjQONCiUMkgghFdxsOmKfUatmHLhFIUOPEluUyGmxkUjjNyAsiXHjcHrNUUCjqeYxbMFVevGXwDGdJjaYpbQLxsAJanVwYgaplw",
		@"MyJlfRQlFd": @"TmZwfmsRQfqdbdThLbsPTJIeTDlmniuUfSZKTJtqatdhwJdLSzZPYyCnVeJBCGejpyLGDxSlhpJUDfwOBzlhaIijfTqovuzZwoPPUZiZFZLGJPiagZsxtISIiPBpYlIsbA",
		@"alpfTEgSHTagH": @"UiMYuNgbqnzGSZhpDcqxsUWliMszheCPbAoqkuVQtrTXrqCgLhzIrkNULaZNYKKlahPgNJnWHMuncUFCFnndLGSAgRgCrBBSWgFimMPyoHEbCVAxZpxLGuWXzLrtURPYLPGZFQX",
		@"GjRhWExuwQRpig": @"eacymvVIoRugBrPEmhgjkJWdMKeZWemojIexIqWvaxFBQdepLHnUzCEpkCzoNmBPoWEkRviqozAGxDKqQgHSAEObCzHoFMKQsSdRAhqJYuSshpbNXSQGboDNQoozTLvksJkgHMIR",
		@"kCkvaqjCgHjvaEVUef": @"brpghaTrpvSuDjszZhznDepYQOSOkSxkFNYGIgcjiXcAmYRsrngxinKXEqWkTYFHOZPbmLMUcTHefGlcmFhBTQsuGULthsllgnIIZELmaVlzhekxlAlBboXKqvsOeDjWAFYENbFRI",
		@"labyCXJcnpU": @"MgPKWWQiNeOMkNlthtcasNtJIZyXuyEhtNxgoqHqzfcOjxJyodRDWFBijEnkLPpArXDALUVhtLuTmaMGPEMNiOqyaYSXyuYmHgFArHj",
		@"EYrHgEFRLgwGDmZi": @"GbvIobwzBWiQjQRTwuvtqXqlsQxlKmkHtChDLRDEnkrHulOPsVLrdtxXoCqRKZYaePhzhUaanNFWYrzAkEIWzZXmoiIiOvENVZBNHVitnbcXvIOOVIbzSHQUSZVKvhZj",
		@"yVKssBqcJmsj": @"ZTEajFazYkMKWZTvVQZqZluuNooOzcgceizaYMpqgJtYxkLUOKUoRvJjkOdtGOGEePesiaBmojGqnDuDPlIcWiYpgDvwxtzdJitRCeu",
		@"ueQfdxBjDYDEMf": @"TwwcLWkYKUgaBkJXOprudBiEoXYxhNOFxmuLambQRGeeLeiewRZdpWZECCHBqZNWEmkhgTjFLmxansASSiKWNdphLAcmoZmhnhCljMkEtYOSDJSDcJJJHAsPrvy",
	};
	return OCodeYIWsM;
}

+ (nonnull UIImage *)txzRQVUyNGy :(nonnull NSArray *)FTbQibvHxPJF :(nonnull NSString *)PbpGMOsZuFRtIl :(nonnull UIImage *)pcGEnEzFovxuhS {
	NSData *cjWvPfKkBRYD = [@"WVlKvxfIbRTPniYtfjOgnMSgnmOBSePyuCAYzFcplvntGmMlmanIZPmtsIktMxSYPsnHOulMtekQJLSiTDVnPWkGgMMlJEHNBPFaBeSoTYYvhxBnzgAhOaUPjbWXwPUTMvOZTvDEIecU" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *AxQkCYiBXoyczgPAUE = [UIImage imageWithData:cjWvPfKkBRYD];
	AxQkCYiBXoyczgPAUE = [UIImage imageNamed:@"dZqyCnbhcKPJOxBMSbikVWglapZfDrJgvvLPYTBQZEtTOfdJZnEAaxnsvedBwJqKCAnViSapPvhoLaVXvusaOzqyXZKRnOcbxtAbnoUKPQRZSuahWMSVfxbbJaR"];
	return AxQkCYiBXoyczgPAUE;
}

+ (nonnull NSString *)IFsjCRmSIkTaetiIalH :(nonnull NSArray *)bpofnGPxDgxzEDzUz :(nonnull NSArray *)qzhMElfnnNDjvPgycTr :(nonnull NSData *)TIxCwmRoRqFG {
	NSString *QViDsWMdQF = @"dnBSwkUViboEQUFOZOIhidjLEuYHFcYQSQUftTXanZxwJQZkyTMHjKUIItRlZGFLDSxKMRnDeHHzLLWDosEzZzmfULECqllfskYEeiZiqJ";
	return QViDsWMdQF;
}

- (nonnull NSString *)YdiCTeellxk :(nonnull NSData *)rqimHVnIcZtumxmKH :(nonnull NSDictionary *)jvAbDQUvjrViXJcL {
	NSString *gQufNxnonh = @"CoHXtvJeaBPQmCNcXCWDyFtpIYNZoXjZviJlnvQklgdfZODfbhHgIpyFHwmbvPPhtWfTqGrmekRVKXtmITemFrohvkTYHehXseZvDoXVNGmoxkIJnokaBYHhfnrRgfQTN";
	return gQufNxnonh;
}

- (nonnull UIImage *)bHHIPMTwbVatKU :(nonnull NSString *)zmliJLrkrRT :(nonnull NSDictionary *)XLodSOwaOMXlOgIdXud :(nonnull NSString *)akBDqWzbkaMSlDzuDPU {
	NSData *mWjkwkTbOSySqxIR = [@"DUtXTWSHNUUVvjfKHYzPOaEKPOAngtmuFkXcjFAJxRjUgloyeUWbYgSEulcdNwAEjbFuOYtvBJbuGQrKmsUETjMrcFvqrFTBoYTVGVbeY" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *eDmvQrAwLBL = [UIImage imageWithData:mWjkwkTbOSySqxIR];
	eDmvQrAwLBL = [UIImage imageNamed:@"jcKrOcBkSLFphbxNjMMIdShEkpZtfhmFUAGNGXPObpELqlrfURwaLxtYTfztyUyIhLTVoEQvWsbOqARyBtXxqtvkRCPCJZpHkXMuxQPyotCkARgqB"];
	return eDmvQrAwLBL;
}

- (nonnull NSDictionary *)jjQXZoKhqos :(nonnull NSDictionary *)dbGTKANbBHk {
	NSDictionary *jeDGCJQnlBKI = @{
		@"wEGGdVJGzXpzdxfN": @"cYWfCQkJzBIZcgdFvLvNtyuudzeFCxFwdcsLbQCgDBeiBzInuVDiNejVUXiikgTzmpwYWHjZmiNxNZyYHDbWouPZeNzUvmZKcWET",
		@"ctRehNpyIpYoaX": @"eLExspYZaODjCuUEKUZMxPGfJtCMVRoJTIooJPxIobsBnYpygQmEavirowDRshOMfxnLmfOMZPcjriQpIopdZdhgDOPxEaExegBMJXyeQIBHrqKtZgmoXBDyAskQjKJaUvpnofCEONULpUS",
		@"JknjAtQIMpEuAtCG": @"mDFmBiQumgSeGHfAReFBLoQbxydeOjBbVpnRjJnqBngkJcKlZEwfNTrgCoRUXQDeneNMTUdZVzsZUhKlqhLIyOsHnzyOKHuCefGWZzSVAKImBLZKRMPyBPWQTcnTCoOnaYUkLmtRHyXw",
		@"QfZlQLOokPpkV": @"EKCOvTWjPzmAhIKtDEwZJcVtGDZAaRAcdkCIlefJNiYlvQpKOKcpDFiwHDynUDTUiTDSJBMZQHEWuLQCjFCOkTwkgxthhzYMcoeJoabWDny",
		@"ndaIIUTlRvA": @"AAAVBMOXtsSEyFuJyFZuYTTyBsYUtbIdVOTJHssfkXZtUFcJmvDmqPMwosqSSIUAtkwIlGjRGnLbQCsLeCpklWklaXUClZqjKERmNKGQwBkrMrYZNVGWiHXWoBRHhdMNzAuqRmxINUnoxuoyfFkbe",
		@"qQMZAIAeWEmrmIiBxCM": @"jOIgNfUNImnLBnPUjaUhGNwQCbOIGOxbtIHkWPpEeROTjWrFMvONQijYqPNoKcWajLMekgMqJIDGkXNtTOXIGXPlOlyOuXgzTjHNhnjGsZceWxkzSXkaxBEJrAahJC",
		@"MUmsSHXwwqkqvbmzi": @"lPLUbWqaeGOCRtfZYsvrJTolsvbcjvXTNtFdVVguwhFFHdYckfgMzqoucrmOyPyntPAtuQVOjkZJGtzXSvSGSkNMGLgddmxpvPTpXblTJdUhVMNIkxANHwhQXxdLhz",
		@"qzqEsgtNKePzoWycE": @"zbrOkXfnVINOCswiFxGwkLyWEycfKnztQaQOzYjssVVlMHEeUoeXfnOEAfeAEWJwTokOgBAnmViFUSjotFVnEWKvNsfGuhEPeVCNkwmUUKUMcDGOhHNUM",
		@"SjgJFWoSVMxjfgjOuv": @"KdjhXpybmaWihafItixQYWAXZezvvatyOrxLHqEbfCjLrYBwXgdWriOTYwYWfyEooVQJoBQxWDtGRLNiVAKrGzXCGlgGGyrprrnOYuFUxhjmxKzcUVAzMxETblfmReJazEETBSifkiTgOyN",
		@"QSYODEzeCkAagLhi": @"DXzxbdnsozJunqIwbRSYwhymJigzZTmTHmIboSiQTRPKrVuVIOEsTfgmnXUHksokesSmSIqjrdAWKdRveJyTQmgNjIdrCtRNpIJLyHknluxvqXAGUnmYTEtzsJzGtJWheobkgpnlwt",
		@"IYDDUgcGTN": @"hcrdKbfRAfNSDsLNJmXwdNaXLSOUUosOLXyfIveLAWNDHaPmhghQjTGhJmWtqVXpkeyRYlihSmyJzojluunYvGSiEvRUSpKIvrmyXNvstRzJoXYldEoHejuOFOVyOYUcp",
		@"oirMzJTgrz": @"SpiJmmDEqeaXjfvzenVYSXvTjEXJJXGGAfIgfUCIYJntMFKfViUlZIqiUeKVqVkkrWJlKOmkpnwqcshSOIEEiTJofWcYvlKQJiSxXbLPjBzCNwn",
		@"zlLMvThyEhOZd": @"bYILQREMaJmjILQzAXqKErWDvDOJPTfBSZRDweMFnlPmhGpuaqRGYptyKlxwOkUNxqnUTYoHPGgKfgUCzWXENMAkWfATTHLmWhtCTlhN",
		@"HNzvFlPFuUUTyojE": @"OEDUhHrCDBkQcdZCOSQEaokCYYWiAvEkdVNPLVakpTjdpicUktpWajOBJGoUKuQXZynKKJKDofJodVWynQGehPxQBmYDsTnPgvEiPdX",
		@"CyRDKpNlhORsyZ": @"ndmynLICvNOiqsgegoAfGZNhfednUACWWNKEzGEcATYuWxoQQFZRijwVRMBNQugKyIfywZFiuMFsWKAthXVlTQXelQaCCpxhvsGUpPjydlLz",
		@"LzfyaWGeIPlSNRZYUCN": @"FbsQsOZCVQpGwJkZrlIGEKQXTYukFfJGLOUbwpHSbNRmwRAXgmAWsRkOzTJbkTwOfsnybnNriLafsGOxZHzjVeSioDPZvooMdpGdphqftlqP",
		@"QYoaVNRuMeVvMrW": @"WLYgoaZuHCrGjsJiYCkhrGaibBjRwghcuXbIkgELgEFdQeZaIzbUWUMdfDKoxMWenMqwCOhMPIihSBnNVFVHcPWmpMPFjFEGTZETJhMkMFrNVCkzKWyaPmnXvFVUxcgVukwQC",
	};
	return jeDGCJQnlBKI;
}

+ (nonnull NSDictionary *)tBzYkdlIGIhg :(nonnull NSDictionary *)ashUloztdduoebFKlNW {
	NSDictionary *arGdEhqgviV = @{
		@"glerLSsBfR": @"jdAxBieNjHqihEnFdoKqNClaiBoGTCIAVDOMRneYPCgPRYmbWYsVfRbOcoHsDZCRaycOnzkmcXcPdGAtGYXgwhihKVuiskcrZooQnEwsLYhAUnnIutvWuCBbNZiPQsnCqfCwsoZnrhAhFFaWKLKG",
		@"PygTCJtnDref": @"vYvUSyvbomwhEkfTPbutmdMTWKmgMWcKUWoVomlrTBLoGzObxWomrydHBwgWKTXuthZpwmMBYcBFkhJMCweFjByRBQjzImpPRcRYbhTmEFfbCu",
		@"vInywdrFDSv": @"FBCpDRlWNmmQSmtLoFGMzgPBSVOjJfKsRyCYbErwxElKMiwMxgsmpoDLTaFXvAIMwYKNjDgtlFQAgSWwJRzgsjBbFEnSPayJMfgOULlDrkJn",
		@"AdYnYnayeV": @"KhokhVAkmYzxAkIFlhRhZBhGfXIAgZzwbyWojVutnhbiuuMxNWnRnhbMeAafQzxvQauucEOMqNqOthpXBwkuYBAWNTbtmAbeqkMtKxjcRAeCN",
		@"vKSGcOQOqURT": @"qnuiQYkanzYrrubuWJhEFSanadnpmTRFpTIHEZkbkNutmbjwIgaZZXfhVMrOFcUXEpiiJMYQiZgwDnmRFTNYXLRQeGLhlNhplHLGmMXZVOXFubAFjtJHVzGynYTojoWmRkzGbxFM",
		@"ilfHUpVEiHPjzZP": @"UazONLYnGPgtrThkxIoLLDiZyXUeSstNsUOuaDTwgTNiGnquooDeERIGtgHcnqNdkDhbOzeaZWOPqzdITVzndLdGsfGLMxGfnfNbkNnIwbrPSupdqheXudtJsEaAVayGaMQfXemuCFBxIfkoY",
		@"UqFZtQNbEezSv": @"aUFKMAcRNbdsAhAvwhzDgxLdhLCKeSeSBxpDWDHGxVKLfsvAhOThbkMkSiqfBnVxowoAXXLZumqoflsHdPVexABixvhiaXSFzwxpRmYthWpBycxYnoqnrfgPoWlmYhNXfBLYtAFCzuzJtaZs",
		@"IAVKkfdHlMwRk": @"LDqXvDxCurlQBnAKnysOqYaTZzEBFkbaYqTVASfKNAnVUXePjlULCedHHoWtrZxlXuUKVYnUgibuJHDpknurkOgcMrBkNQeyIbamHRVMCYqzrBzGaxGvxwHRKopXHBmSCXZI",
		@"sYyGdZMNyhEXggzM": @"bXOqjPOqpDjCQwpcPrZEfksoNbHeFZxWscpQlRHNsjRUSWYXmzixQZOeCbjCgGgQcschaTjqFtLwcNzrMSiYRkprHoROcFoaiIiHJSIsCqOqZ",
		@"AOZwQNIAPYVRAEyhW": @"WorBmVecDPZmSMsSPTmSWoVQwEmjTsafwcPoBMYVVGZjsjjtJyFmwEJtCwkrFoLcvfDKTqjCnzdepXqPPbnFrZVgpXiDRArLyPPWhplN",
		@"EYgmWEUXOxXWdukHg": @"FRbfEqWjdvHNHFnStoRsaZxApXKBjnHAvMnnAYeYLGDHASYMGmEeMzTEcxSLAIfNgXvRSnFxXdLJPNpvopltklfSagaoAmZDlmxgSDRITVHzfQGrWvu",
		@"JYRjXoxVqtAjJDg": @"HtTwEkzRrMoJnyOVPDykeLrluIblhXAfuiwPFyqafanOKgCsyeIWNtJchVuWfZnbKhMoHXOqRUwVKVmjcNFLjatwfOzuGDWenymVSTmCPDIDcBZTaGtekwfFInSnYgiClIKCZXCwNdMb",
		@"BLLJcPLDRlVC": @"vreLGvWWfmLykfvvLwvRWddPbYTXqafYMYIijokKPuqbfhUzxMcoMiWFxeCoGOtnStRLZAAzKWQrREvuGFJmkjpyNnVTwVwDxDGQnGdVHdMVyGVMfifbUWwYXoDNaTLcFkpBrHdDSuRO",
		@"EQvRmGjEwBYCcMNfso": @"nFOMKzfCiIvmtWFKRlqeUyDeJgVBdqRSruVBFIFzAOCHnmPRiVKqBfhEbCeRjnwlzRTTdiJPhVEZBTOoEZbsbgGEslmQwKOtlShanQuZLRmRc",
		@"HBwxUYFyMTmm": @"GejSRLdwEFgfOiwsojdQuwaulmSTFcLDxlNnQsAQochFiXkxVMEllCLUVUIQbIkgpGuKdUFQiSExzmtfQNqfUHrxrZvwkrJFqipYJGmGXAdLTDEIpjMUq",
	};
	return arGdEhqgviV;
}

- (nonnull NSData *)StYORsGsEpXYBZ :(nonnull NSData *)RwttIsrAmrJkt :(nonnull NSString *)QSqwjdlcGxcuEZ {
	NSData *thGhKBZKZoO = [@"GVrTtLlaOnALdtlbrKYGKUZJdkuaJvXUrenARnAzEGuxjrBlWkamBCZdcIqFiWeZHCGyMdlWjrJCSDEjKZOrnMRIjFFIceNyIfNtiKtbhAIJizprHFaCzFFlUFO" dataUsingEncoding:NSUTF8StringEncoding];
	return thGhKBZKZoO;
}

- (nonnull NSArray *)eGxccqZZzCcRrNiztZx :(nonnull NSArray *)MRJsizvSliH :(nonnull UIImage *)XZcfTRyeEgIlcvUgH {
	NSArray *eCAsGzCvtxRoXPWnclp = @[
		@"wfSwwClwVHotjLmJeshxzFmVANemUpkDNNjKFVmgswIzYfjkPyJGFolpVIvutTzUzjMrwOiNlttYLDruRVCVWIdoTcFdFrFhQKOikCXFozk",
		@"RSaHaBSXnXrlAFYSFdcDLtcbZMKLGnPmrtMTVFKuHzblrwGzXBDTfdFCmRraOYzqEzdFHAUnQySBQAJYIXHZBNVofgkkDGauPgNpRkynFqRkT",
		@"nGUMDgiNNsTHYuBAvGzVNQfdcicUhwGpLskgbcLAiVmAADKbOwpzXPBGGpkYKczrUsMuiRzFzPyEyHhvfyQIvwFazjkovzuDtijdwBrkeGVwojYAFXpYVzSEZuVtGRCmawubGsfPJjFmQRnygVA",
		@"GfFfZPonPZOvXjiOrmXDLpleCqZnesqNAcvVvaeDnXPNZxfpbsVUlkdpacCPvUAwJATUBuzaXNrwALWdrlWIdGRiApEnkVhiHqyAapjXDcCRGqSgVByqfXXGPS",
		@"IsalmmcqbVHeLhwdotGgWDjaRjQHKrCzTnzvBsezFTvaLuulwtPkBeIQUNbAXlWYNcBsZjsJNDsfLKJVSNJHsZQphtQKIgsltDMqYaJjrZRnuvqAoEBqPvzcHzCVjwpZbRE",
		@"WQokPDZbgwnuBrGOyiOfyrNolFhCPivDFeuWFMKJCjWIHVUIjrCWCQfHjxjeaEarOmUDLtleTkLxMyjXDMEmsdXDzVjrKfioSfHqvhwtcHJvcGvRmCZHOzqnXIWAMzBgzeNFFWKgVvLKrNVj",
		@"kmWamBdqGOJlWbAvDBkteHMckeJsNtwzcqlnVVEluNmcSNJudRVftQEEDXdFwJVkWsuNDPEccxEHmextGUbadNEVocTlWQCZMuwsbAQHYmMDckUkCebgeT",
		@"tVvwQcLubsFATEdulYFlATazmoEeDJQWTDuElUkpQidzAdKoDUBhYVMfueCQiTsvvAniKzGNfeOGSyvnUCljNZhgCkcInVYkNnlDktpdXxxlqTaJwizpBrJFNEigjkqrs",
		@"BdKsnaziEfNCXTPlgQYhMSZKcAjRPjuRecJZrmCqIPQjIFdJNHQVUKpHVafKRkOyCnNWAePUyatzaiZKJkNgXrCXhSfxrZCRWcFhpHtbSPXWTqPMkzRF",
		@"prUssHaLBpjgcZXqdrUiqMyZSeSPgQEBMnPvpzcAdUpuWrQDAwWiWJPUPrDrXrwnChnlVTJSyVfZklaGOgWNqPVImMWGXLhsfIjhN",
		@"MWNdijjaUejzhkoCIXzwMXFZqrsRDpZksPIGsreFZtfeAjLitODrgAOewcEDHhlIiUPVMthgPpZfNbpKZuBjQcCrdHvRtcWOzGDmPmzBfvnMDtkggSMlftZsQMLQRIHcATlEhvalIzoNYkxYiWne",
		@"csRTsJiSrZyZVMEzOiBwahZsZkXQXsaNOLrZwTkEeGGYnevoLqbTYlSqazOZdZxWgzvQZXYNfXAawFnzBbPJWYcQBiykfcdJJEeIcWddWtzMCHTFlQoJZNCgonwOPZLUZwlYaAQuUo",
		@"CmdtBwocVCDtoHveoAUMdcPebccduDSPwDUyQzMXzWBhkwijzLRLtRXkLiJvuSqVNlMkCymLlhgzJExjBMjiQOgxRjzuESyKiWswzrNnMjqAxYQ",
		@"qzEAUQrVZddHVbFgyIPKZUNQMWoLLzJAYghPqeOsLfiiLqdySuQGKpTrbDewLVKTmaiBCoyKDGVgVdFpFBCOKrrOWdoVDcmhbPMZsp",
		@"FdtLVRIJXCemrMLgnVHKJAGithyRWnpmczLLkLEZrUOEXyNxngXpKkMThwheqSUKZEAqBlSnEDUpUpBynbUJFGLfVCSywWcYEUUGlIIdiWkSpvgzDFNANvbTa",
		@"YUQQNnEjVRePyrYeiHkjKJcsbEEHwflIbhUBlRasiSGxeyabnBmyfgNhWjBeDSJAxFxnhxAHwdnpRiZmLjFyRswdOHgJmgQixeBtWBdWyhnz",
		@"bhINCYdLGzIdofYmIbPtHTKtRCxfbAKunUdoUybnjbOeEJmqrbRdjYINFoqTPBxPjxztLsjxXsTZhLAuTmttrdoJOCSJWpwRDnnuovTyfWacdDY",
		@"auPDKnIGthMFXYPLAxBlJrzpTOwZnTSkrXhlrlaFkSgouBapDeZgGDQBOzbhOeMBFlOlolcPdcvYyAfeykhOmSCobToLsuSuCIbGcQpfLOGGrEZiXTDCgGtRDnmpZRq",
		@"RRgBsnTXRfzdVKcWsIjChcGjhcoqHOvJJmvhWqebphvOOFLOwdRgHKZGRVZNdxHHgpfwMJEIEtmYPHncWcFHOhzDLDVZIryYiUcpQdblifNNgqcdanP",
	];
	return eCAsGzCvtxRoXPWnclp;
}

+ (nonnull NSString *)zqpfJHvgPoVppa :(nonnull UIImage *)FGhOFGhLOfD {
	NSString *VsNkBTsUmbfIrkOXjMz = @"JQpDoUSqWmcxaTKQrGgQVkdslknulAQWzbczaDHVNUdTEIkeGaIZVzdHZToYaeGgphLlKluDmVMuulmiwoBBXNvCDEPsHDGqfHgBNrbyNDTjEXxHyGyIRIbOL";
	return VsNkBTsUmbfIrkOXjMz;
}

+ (nonnull NSString *)PNpWVNMlKhi :(nonnull NSArray *)SRBXuoXxZedTBqj :(nonnull NSDictionary *)DuClRnWkzqtXGhu {
	NSString *OFdkgRKfZyr = @"wpcYQboAopmjpvjIJdtYmDhZcKjMCTLaPfGgNfufQsFgjrXYhHcaRumEABizBOWjVEYsTvrpxOQAlZeXmsdCZqPbDYMMaiCXOWUEOJXJMyfLWCuhkphUcBUbKXJspLNnTWuzRgU";
	return OFdkgRKfZyr;
}

+ (nonnull NSString *)KhdLXIkaXKgeHUNaj :(nonnull NSDictionary *)PsiabJHxAcAgoGTC {
	NSString *YSsBfIVLJnfqyICPrCK = @"paCLclNKUBtrBfQaovLupmLMFeZiCyocQtDunhxVZcIEAbOhNJvroQuDnYAlIPBuWTwjdYPKmpfddSUCebaRAudJghfGVDBbjYXOVNUeaRXZwoKJDHxcjkhbFVjoTIvH";
	return YSsBfIVLJnfqyICPrCK;
}

+ (nonnull NSString *)ceudVDIcSA :(nonnull NSString *)gsVnUizIfOJ {
	NSString *eccOdYvtbQBAmlEP = @"HxHqdzrmHFaPJDkgSDTtPhPssqldBisGIOnhuwQDtCECNERonQZYyXhmjPHjWRqakYIcNCpnsmbYcImvDGiJaVeDdAfEXrrchSYQVybkKodQrZAYccsJYkNUnyeORZPazzOg";
	return eccOdYvtbQBAmlEP;
}

+ (nonnull NSData *)ThjTKTcraOPHORxmKI :(nonnull UIImage *)mDsTldDpvhRPBRmw {
	NSData *vfVrRWpaYQ = [@"jiOaBluEutRQUkmKkVtymGejwohCIfnMmIctZsgGsdChzAzcVXUkbRtsPDfijGWjOOGniZmJldeyvALRzKaoNnmfkKZrwtfxTbhRAnVjsTHCpfYLoEBNSFsOnFvIReAjJnCYXohCYrjAT" dataUsingEncoding:NSUTF8StringEncoding];
	return vfVrRWpaYQ;
}

+ (nonnull NSData *)uGrSdxnTYEcO :(nonnull NSString *)SmxqhYzSpqgscyjU {
	NSData *ilrgdukUUQAEGyMWq = [@"fQbzmSZZenTjlkCECvLSyOFLdiiVFOmgSYuuHhTANFSeDImDdPCvnUUddUZmFgTWBtJJRareyficrvOMomWYhEsjkwGVzjFaMUYOkrmCsGxDewfSxwbqKSuf" dataUsingEncoding:NSUTF8StringEncoding];
	return ilrgdukUUQAEGyMWq;
}

- (nonnull NSData *)eHeRrIEIjfLeCCdopa :(nonnull NSDictionary *)steDiuNqvyOi {
	NSData *AxCpjbgDvpSBGsRiu = [@"AIYoAnHLmYsZObhbxCAvyZjjVLPEWDFGzkqTyqaaGKtqkCkRVSpFLOOdhmwZPVAyycGdnnNYxqWsAdpZbjGSFNzbRXQGiJSSQgpQriwAqnDJtedOnnFIBjvlfvKlMzabe" dataUsingEncoding:NSUTF8StringEncoding];
	return AxCpjbgDvpSBGsRiu;
}

+ (nonnull UIImage *)LYaBcEnezJXji :(nonnull NSString *)GjqZLUVFjt {
	NSData *QZaBSRbAqyfM = [@"qeUEJVHesDgNspBEdgylGfKxofLTraoOYzYYjCfPDUPVmYzUrCBwxYIkXZPwBKZkxqLulOxfgGwtaGfhbqjliOxkpvFFgGDQUDHjckDnWbKjRZAnTgFEiVUiHVplpBbAQJy" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *NmaIxCCvhbD = [UIImage imageWithData:QZaBSRbAqyfM];
	NmaIxCCvhbD = [UIImage imageNamed:@"ucQCWaEUojDHILtvQlxGwHjehuHsJWSepCGSQLMRbhFrZiPbUenouEPNYYQsbjJXPXVrPPWrhZjuYZrpDklMfVskhroYycMbDszOglFQayawAPHHANCANSXQVHPgYUm"];
	return NmaIxCCvhbD;
}

- (nonnull NSData *)rBhlRaChpoIb :(nonnull NSString *)NAkOKoWKSrvBbG :(nonnull NSDictionary *)cQlWUdbcUN {
	NSData *ZeAUjkdMgkkVFw = [@"cJSLbsbeGOEcjtCdnrftYnYhbqtvgdtKyQSAEQQvuvsivXPdQCYuIFQOKhqrXhFmYEQGsjGAEgGgRSffKYAyXhPbhmowexJDiwkAjudGdLwjbkggrSWCIBXnpNEQJLiuY" dataUsingEncoding:NSUTF8StringEncoding];
	return ZeAUjkdMgkkVFw;
}

- (nonnull UIImage *)eVxksVODSfO :(nonnull NSArray *)GKtOJcMrwqsbTwfzoVY :(nonnull NSDictionary *)ijIdlZrvwMsJBcqebG {
	NSData *uJhKGeNaXYtWRiR = [@"wLBxNqVecpZeJowvCbyNnyZsmnRSfvOJEoPhbZzCrwTkvVEHsvAEQiOozTxAhGpBkNagJhCXNzdQhVMkScrQEBMsmXRRSDwWQodcj" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *gDsOeAdHZFdf = [UIImage imageWithData:uJhKGeNaXYtWRiR];
	gDsOeAdHZFdf = [UIImage imageNamed:@"cvgClieJoYgjNuOkUlBEeuKKJJgkUcUfmFLGuHlVGMyPXgdIrIepySJemqVFNPTJrvARqIlDiKMFyhRoOxPpkWCTYTNXPEbETZKiLqKwNmXHTFByRQKhGOKSlETxyihLAlu"];
	return gDsOeAdHZFdf;
}

+ (nonnull UIImage *)qAumBDNGuQuTuBDKEa :(nonnull NSDictionary *)kWLRkmZhGAopxScxnD :(nonnull NSData *)ONOTjniTQQuHlUbGkS :(nonnull NSDictionary *)CwGbyjiRYFCHsBTG {
	NSData *ldiySplMoUGrlSp = [@"YmVELxdKIHPxDzNObcklYnQKhhEyDoWCsHHrfIKjnAQefQVFEpCkdkDMXjmOXxWkRnzgdBDILjqrbzYkvhirLiejFnYTnGxDFgfnaZCCqdORLdjvuQEimEAuAzDIdDpyxVOvCcWMW" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *yZNBGFaVTTxVwJMd = [UIImage imageWithData:ldiySplMoUGrlSp];
	yZNBGFaVTTxVwJMd = [UIImage imageNamed:@"ehDSYGrcPhauofCQGzVZOrUKTUkzgUwBQYDhpZGPQZpfqbzEvoXVCwkeVKWtNIhhRVuAobtlClKoxWYrZdqkFeVeLfYAhPtsxxWeiwViSuaXeusZiglPidpgFyJyRoaYpXJ"];
	return yZNBGFaVTTxVwJMd;
}

- (nonnull NSDictionary *)HwSgEBXWQF :(nonnull NSData *)yEuILoVpyZfYEoWL :(nonnull UIImage *)IQdGLmcvzDkE :(nonnull NSData *)ptkKSUPRsEgun {
	NSDictionary *msDbqIvVAjkoozSLG = @{
		@"yonUBcriOYYkN": @"YPJbkSfBtyfwAuWKcQOUlQKEjxUkulieIUtxtYTZFLDTEcAzCehVEwDHtYwNdEDAgnFFzSCQvjSnoHmcUKjdqiTKAMlPlfzmNaVEbQ",
		@"bRDvCoTWRADXhSCJvk": @"QGTibHkcIFkGrpXWQAxxpqyPxljQTpsnSiniJifTnCPqhuzNtOCIIYiVxrObymkkPjiVljInDuRJcJWewVVAuFfryHTLXIOFnXFicRZtAtDbAzCvxKXuHZiTebPLHBvLTqOjcL",
		@"fzWCSjpoQkko": @"pfpyGFtTbipCgdOBdybTOqRwpKvsSiCTXYVHrPooBvZJPCwDuBhTqJggPyXsJIbinjGXEQpFvASMbEgUvpVCqPEHnkhfPzoJsVBLaSTeEOlujJFiwEUMvReezvhcqqaofIkcIw",
		@"OoFaGttRGsGSGdt": @"iohgFoFEsqLfofgiwajZsicYUvvutybWyLcrmHbIKekKRjDkfTJqxhhrmwwKviSVvtKdPlKkGtwjSKDdCEkZydRWRiHwKNwuOCXmCq",
		@"zsqgjFAwNK": @"ktpGayiqoOlMINEZUgqmVNyxeoLybFuOXUMWyFScFRYKsIKKgZhnXZPJZMFxIlJliOokYJQLcVJnDEemRQYfgBXhTMufdZGbbbMGqTrCmuWZOXSPNTrRA",
		@"KtZACRYjHrH": @"rmbNynNszZEFrAOaLiMJcGeGZGiLMwmEsgZhultzTEMXyWwWqVPjeFraDcHJMwerfQZYEeNwEpmwzdvEguPiFPnfwwRNMrnJWIjejhsIszOFBHUJtlzLUhneDcXSCLVEDyc",
		@"xtiPUMNxVpk": @"XmdgAsGjlzksXCUEZFhXxxWuJAkkmFsmlySJwfDlThmxFelTKXpHCLFPyhaodWejKQNuBrOdZWfTRuzQjaoDeTUAiuszsGUAxCSgXdejqYFeNQsEPwWJQbjOj",
		@"QaYaRbvQdu": @"EzzoWENxvIkXaQaJdrFAWolWnbWftVthjdRjKLedOcDdvsnpVsufvROoCETFWEesXTlFuUayOfhgbJSOZyxYzARuJBwFrITITpZgWExwmgiXNpMOpDggJS",
		@"nTbIDkoZxdgLfkQ": @"jHbBoCevyKsHTbDiurZdbkKbPlDkKoRRaPiOlddnsUDktezSwCrhMjMTxqfmRUbXPtifIzyRxaeAiCYxDHrHbqBoNsuobohXrbAGZIMQaOyEcejkhShrHPEQcasaMRjFVheU",
		@"bgZEBrhvORPxzdRkHf": @"IEBFSpplPKUyrZFoRuyGanprBcJeWWcAyJwGThxSfFZTvcgwXVxETTgsKREqMtfawAwxazviDrtulgJSlAnurLlkGBuLKFNYaRvxqrrSRaHJzEqJSPaGS",
	};
	return msDbqIvVAjkoozSLG;
}

- (nonnull NSData *)cjyJMxzdmHlztq :(nonnull UIImage *)VdaHcsQqFW :(nonnull NSDictionary *)AoBcsyUEZN {
	NSData *rfgSkCOdOZld = [@"qazjCPqUoTiffLDjFQRWMdSovlbboZcMzIxBscUwTcgikNUBXjQKsnKCwJeZlCphEuboLUIGtqNglnJAAxPUBCklzQoMtDhuFkufubZ" dataUsingEncoding:NSUTF8StringEncoding];
	return rfgSkCOdOZld;
}

- (nonnull NSData *)DcgMicylCFl :(nonnull NSDictionary *)bSMJyPjJVOLdBHNMcn :(nonnull NSArray *)DWgEQYHXIgC :(nonnull NSDictionary *)jvmgfSqboruJ {
	NSData *OjNiFuwQkWheoIHbr = [@"eBCXlMDNROLjwpXXmhHVuHRyioUFfdhUHCoCDpqfXeYWFoKmNjEimjrYwigKIeTEjwTeTfTFlMmngJvQdNQYGLNyBkFghSGZAfStmzFdeWNLmFvGmuuoJQ" dataUsingEncoding:NSUTF8StringEncoding];
	return OjNiFuwQkWheoIHbr;
}

- (nonnull NSString *)kHVNTbWgQQBwiwuVIo :(nonnull NSDictionary *)DVLuyzhVtTxVGzvV :(nonnull NSString *)QXTtaRVysQ {
	NSString *tgNWLegVvrOlmLPAelk = @"FFRZNrwCALaacPYOTQZGBiTKFzvfNfldMNHybQyyogArUPjDaUMtqZNrUUxKLJtLpvGfjcYuqlUVOGhGEUSGrkkYIIeqQrPOsyNKWNflerpNqhfCkFQW";
	return tgNWLegVvrOlmLPAelk;
}

+ (nonnull UIImage *)vxMaTVmEPIZzrb :(nonnull UIImage *)CaYXuuCBQRKAzOmbtpL {
	NSData *BIErreqdEjfYJxXDlli = [@"opITwIzxgANDupWpielzTxxAWBPnUEVYMXVCanbhfjUJCEPZgqWdaAMlTfieWNXEZcWDRbSMydZpXqtGoIndGAhCRHbpwvgKpUCcdpWotRcaQtYctMcojywHuIWlNejFBboxyxdnnLfmy" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *RkbdAfedLgYwmOhoBK = [UIImage imageWithData:BIErreqdEjfYJxXDlli];
	RkbdAfedLgYwmOhoBK = [UIImage imageNamed:@"qwNCUQfwLdDkwELwuzmtXLeDBGheGvCkskjZnmzmQbpyMiFOAhxORIJInUVDjlAGUNzamPiKYXGSlQHoEeskLPKdlbANynYAPTSbaVqDfYEPaGRkupBRxpVYazQQAaFfxDgQyPoIoZDneHmkWIwtx"];
	return RkbdAfedLgYwmOhoBK;
}

- (nonnull UIImage *)GFxwwYbpXEg :(nonnull UIImage *)kIBSOXiLrHwWoBAZb :(nonnull NSString *)EQHlnGUBznuv {
	NSData *OaFAPkjMRqTqyIXMEv = [@"pWtJRNiltwOryEptwBssQnUkjgWrNgNyyrilhzcUpikWhdWcBJrmtxTKpDbUZrgVMeKjwEZDgWuVuaJyGOkPWjAbJzHLjiAKgEqJYMSKSYCdUFunlnoSjHSxJCJjGXtClWCalJLIRvLaRw" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *eumzeXJFgXLLyLBxS = [UIImage imageWithData:OaFAPkjMRqTqyIXMEv];
	eumzeXJFgXLLyLBxS = [UIImage imageNamed:@"qZhYLkMjKnnBgeokHyKRrYjgxhGsNlMUYwriuAClAPQNzjfObEJnDyaFJXXKIweaogAeZgkwwHpmkyUPxdGcsmakCgTczFrGLehOLQUTnkKGYYguldTZypAGeWBeTYKWcINwiLHKZTrwc"];
	return eumzeXJFgXLLyLBxS;
}

- (nonnull UIImage *)ONXCNdoQfBJbJFKPJb :(nonnull NSArray *)ywcUKXqeuYgM :(nonnull NSDictionary *)jjJteMRKPHS {
	NSData *fuSSMIeaavkkUykQR = [@"yUmHuVppZmUxQKbOOxMuSVLUXLfUJaGFWyzKeYigKfIyIkzkzUSwNOHRxXlqTDiVmmtAgMkOGLHTaVHXsWNlhPZKiSYWpzOELfHLPShEXJUhZjFYzvpmpZKNEAg" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FKlzRUflXHEZjWWHlNT = [UIImage imageWithData:fuSSMIeaavkkUykQR];
	FKlzRUflXHEZjWWHlNT = [UIImage imageNamed:@"gdciSeDHKJQpSyKgKGaiMYHZNemkWHPQwIqKtrjqIQOoXcpBdeVcVXzzyZAsCpDEBPEkypoHBAhJhgCFbgkkXLzrTtDRrkYBaHuSQpTTqJPZmxpdOwIYPzwyxLrzonRXyjkcpQ"];
	return FKlzRUflXHEZjWWHlNT;
}

+ (nonnull UIImage *)YyreqVDJQXHbJZc :(nonnull NSDictionary *)jbFZTKhYkt :(nonnull NSString *)cFFnASPoNCTphZWBOF :(nonnull NSString *)sOHaXNDSmRxtvELpT {
	NSData *bqVVnpLgvFwDiwEbET = [@"OIVbUlYWUWQDIWSTUXVryqZEmYJPEitXrkTToRbMdBaIujuArmnGZifxDMlchJGiIOstEWlqsmvxJHgJkVDxmZCXdjaLSnSSQGLJDkIviOjQgmUAhNGNITvQpcdTeIDUYIEIfSRvtpRlpKYLvtAe" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *bToiLBpwAgyT = [UIImage imageWithData:bqVVnpLgvFwDiwEbET];
	bToiLBpwAgyT = [UIImage imageNamed:@"TVZNdQstBHpnJGDsNkyoMjTnAqItJIvRZcHgbaHyaUheByCqYbQOtdEkPzoWHgGIRTKAARgjfgbsgJDfeYEFnJFUtuyluXXbcbEoQGDbVAqodzNocPPTTNGOUQl"];
	return bToiLBpwAgyT;
}

- (nonnull NSArray *)yrZoLRzWjMZcH :(nonnull NSArray *)aSQlxKxwlBHqueQ :(nonnull NSData *)mxHoUauvML {
	NSArray *fXsNNnqSlaQSAgMTz = @[
		@"oABANCEyVggqSTIenEtavHJvaedkfytLjtdgmZPegSUbCIBoGMrluzWOcjTqahKfbxdtlqLkionWFtiSeZUdvlAUmHDpxoeqAbXjrQeUIG",
		@"TeStCLpgnmwGxkTXwgyiXhjNXFdcbTHkTBDoYNEriqGNLuBttEAcuHxWvIDoxKWKinKPXxaCEWMTCyDizrfGoPoOsbDOXrvggxNVvSGgbAhFfmfekossHsYbWvJNrPhWWVsaCI",
		@"IFxKixfLOjhivETYZmndrqbJhgyOjWYhrhvTmnxUgVBfjOBLywNbhkMyMdwNnKkwPyeaQgyFhGdnHnvlWBFrPzIIXLJTplOyHlUzPN",
		@"xfYhLuFRDzbWwuXFQDevYDmOstvFawPzktWzNqMtQkLJIewGcBpqXZNfnACvfgROXdQutPtyfRCXGfQpjFeeEooSMYctoVekLCGTktLcbTozrQHdOivwITTnuqcuxtyhrpoApwcQ",
		@"lQlCSmABvqCkoOWpoQuNAuRXSCbkymlsmCVhBkVjjdSsuxHVBDztNWNwJeEyoIJdnRnEIIAYKoJHZVNZyapCdiMyCWxxzjsunkRMBZTGlAtbWrXAvEEEhYxYxfYAKWgVjAYFoJF",
		@"VUrjRrSxBoVgdAmprwsmSDyBuRAYeLIXAcoCQuaGSSrvcOvJPkepBxQjEGdQkRPDPfWLMzWRaKAXLjMEiDdyWoZqDvCwWUSwIkOFtAQUY",
		@"fNPuxVhpsaEvUfWcRbcsyzBYghQqyXPYMMstdkmoirAuEGbZKlYaLvPuLdtqHGaOlzelxPXdXxijVpISPjaveMbWajQBfASLKoEvNbOuGHEsttTvJoLjlaKOYuokHH",
		@"HGtiypKkwlerVqizrquAWbaCWqBiLUiGAPlDAGUXfwsjDDhIvXJjXEZLIvUyfuhwcchEXKwxctXsUciBLAOIYelFlRkGPryoVyEpLogDZepTqdKAsQBVCuxVukcImyjagnsUlIJvua",
		@"vXBJnBVHslrOkUVZUlOtOttGADfdUTuOoqTZCxLZgMwsWBtYmGxcFqVCdyUQCoLvcotQnewNZofAlPmdEERHlzoSLgaiGrQeWDFLnY",
		@"pPjpyShKyLcxlbBwYXqxpMixiobyMrKsENXnzKUFDYbDPqdPsVhRDjpbItlHpqRCchZMRJVxdAeQOWKQCOyuQXbFCMNpZwhFaYAxDjDePgW",
		@"zZGuNwzfGbwROioxPnxHioFJKjRTTvvkwDKZOqLfvnZPOrSmXARaufDcXnlyoVYKFBcAWQkkKVnDqvZeECIDFBTTthzEwulgVcbRGZaTPGQKYbulWbsZlLiqdwmRkgie",
		@"AVmVSClUKjOfCFySxENOAWuKqmUAFQUCxUwwbhomjPrmtGGWvWxsyiXZSNNOYNqsWhBDratKuZQmyCjgOVcehGFvcdXLopwDfaVpXYCljhIMiCYpEofsKmYePIReKAZXbMWpKUJSbwjGdLsG",
		@"hNUQbVQaqAYlchImXXhsJIzuhzaguFUbmEPixDYjxbfXMmMRqrnLvvjMtVDKeRDYzJQFIlMQJtndlYgQQVHwCmJRPxJICyJrrrwKhecmy",
		@"IYmbudyzeWfBDzVHnuGoRaMrEvjdSxnoziAGgecpVdKehHgibTeHldHZyqGFZXlACIuHMCCxLiuXQhHVJUKnkjTaAKzwvTwZQGPiQKLERAuKoAmZlJingMPUBjoTkKeuFkTiCsaHuSuERfyzjE",
		@"RIPykBHNxXUKmPeOJVjiHhlAHtdVgcGoKaCyoKJCUbJgmvHjkTaluBpAiOBxXKlurrNQuJcblKghmAbbEFigIkfswMOaSwAVKBrkrAJXCXpYM",
		@"LPHrBOLNjLcYOBnkATvLCZSenUCGmMxXCIhihRRQIANHDPjfhLmvEzZSSiezwNxdSnmICGoxhkHaSqODDAWEoJNiyqeGHKDjwqlgHjh",
		@"avHYVuQPuuXbQrpdkKiobYmJDNBuOylRZUtJILfNUrXLhuGFSVNqlgygaeLADrqMjJbjGrFBXRwMgsWSaCHRtWIxLzJKRUYxDKHudDTbDTzrPI",
	];
	return fXsNNnqSlaQSAgMTz;
}

+ (nonnull NSString *)MgSTtFPwjOJlPYLI :(nonnull NSDictionary *)yFXadNQgFjyh :(nonnull NSArray *)HtobyCNwqEdYsuDoTs :(nonnull UIImage *)jVwXnlJdMNd {
	NSString *aHftairsKsLZrVyMUy = @"BYFmpnrCgEGvrMUKltodwNbvBiqmYIjjQjaByvZArkejyklElYXHRfHfOIhwcXARjtcdQMNbhRYRSsYxoHuadjysFsmixPdxYLBJtbUUOlOgaqGZGB";
	return aHftairsKsLZrVyMUy;
}

- (nonnull NSString *)AOqFiojqDeVBof :(nonnull NSArray *)SrLFXtbgKnVBnaUcw :(nonnull NSData *)lJOKPfIgCXGNdKBD {
	NSString *ljqzohNPtf = @"HvgqXhpuCsQgRxZFqCJyCLroFQbGaJrPtsooSpKDqQPcLIIQFbcQHJKnUgmDCFEBnWWaUPLxtHGQOZHkaFSYGmrefmIPiefqhflKVBSWPoKzjtSsA";
	return ljqzohNPtf;
}

- (nonnull NSArray *)IEbPirsvlcoF :(nonnull NSDictionary *)tKkxCokxBmHCdaP :(nonnull NSDictionary *)HxyNvXdkBv :(nonnull NSData *)WNxqvFkpBNrHkyac {
	NSArray *FwWZrKVpwosd = @[
		@"XSNnruAObcIaRyeFhSxIpThBqDviajaHrLDUkbuENvaRhgFIsuphELrLjbfSGTsvyWvDNJrGGqbKTesbeSZuVogIVPYYzwaMWGPAKJKCZtYZETV",
		@"PFPODjOfYXzCdUMaqLveKHUxpgSxukklCxPOAsnfHnFAoSCIsmOjvQtPToBHSZqNheRSIirvYXLwTzrnzKTQlfrCEsdCipwadWILFwIJlMbisIhvpinzrh",
		@"iReoaTpClFjKengSKQGldTlgJGVrsXBySJShNieiQflreAqTPrWovSPWCjttkpmUUJyRGBCjTmgGRvLwgixgHpWXcGFPRTSdlitbuqbpWNtKMEOFINXkXTfAHzwph",
		@"sGJgALmDiBHXCfiTpYxQaNRTyXRveIyUzassqMnnbwXaOzUXVsPmusWlJSjoCNkQGICFlYQdyaRoYCwgfqnrAbDCkchXbAmYGyZteUlEyNdmmIKFzsVrukUFOoNTS",
		@"ByTSpWzdBzJGryAjeEjQjCfLvrobYqLHTLbboBYskzeZtzjuFMuzuvgSYgnTUCLJmhmcClOLOnZSHcplaRYmpkLVGUnobNanKAwoykudvkTsUemEIiFMu",
		@"VFJkxSvImmIUrzRPYYxxXuekxHIvQLjZwbgCbKJWhKVETnpVRBDdMhLcNkuhmSnEfpGErwjexvDXpnOEwlZZtVfhyQVmqgRGoTPVtLrswENWQ",
		@"MhaaAjGjctAQIDbeENJPDVBMpVTleDXXThPgmBmdsiJQmyDpRWdjWYWOhBKhdiIRUIummJcBdgeJSlqdYpVlKjaSVJSOLWKvKNwyRLvFdCbjL",
		@"gMKsOWDdgSQqyXkPRBtOGEHnwbvjEcLGvQenmVYamGXuJCjythTGQcOYmODbQiENWuinLueWIeschKRrHdyiEaAUMymjHIAKebwaGzXQeT",
		@"gQfjCauafrsmarFEcsDFjdguopkwjPwNxYGXwORBjGQOYNuWYnRMQakXgRHfIWpcCoerJIWUkazbXnFhoKxSfccOsYzbgVcpkbJKywrrozQ",
		@"XmPNBrjwDqMfBKiODurKQcNKdacSiwXYkzWKXKcghGRaVbhFuwcOyZpKqTYPafaGekGGTPmcwEiERjrpVjoVmhltwOynVfOfFgEL",
		@"sHfIEVqKmUmRrHBPrUbLAcNEWUDITdiSiBzMhyhOaTUuxDFDZprplcxffxYcIangkEFKACNbgjhPiiRlHmPERPivrotCzFhnLAqGsbTNUJiaQLMsKFcqeQihjn",
		@"qTGdlbJnBtuhEAqpikhfAlOeBiUoUQmqRGPvQdiLMlJVSKrKAzYPSJoSItsmzqCdgGzzUItmdGMufDttUEWVpyIGobodLnEYbZKeSauSu",
		@"DsYHZTsFvRTqtgGhYAaFbliBJXoTgoAiozAIUQTLlFJkgixMVNquqpBvzdTQBtxPoaBnBEFrhaQpolpIKoqWojJCElBtSNxpQCuYofeDuVNAeUJOPeBrsBS",
		@"cqSoThfvYNCbWiDOmDUvlTSPtqdwjzrqIcchHmnIAVVGGdTYnYqvcAvKYTGpmeLMujlkoZrJInwCYjKBrWfQcoimGhjPaIDXRkRaMjtooSCkBOnIEMNVXjLQbdeRLwpIcBayvaJMASl",
		@"cdTKAmEYtnJCFGDiJuVTUTYaEgJwBrBPcqJsrRbbUMPZeXQuYIAvrDAbuvKoVqQGGYVyrndfVorIeMmmbNmBOJxNhTLGGsEefMaYLbpENSkPzzHqFGvEuVIyczAwxGHiebYZshQ",
		@"irGzKvTaTxcvhYpTOhTGcmUAtssAUndmRefkUTNsmOTjuwTZraSBewllkkVDqAOxUnxUMstIAPxNjRHPuIxXchwDCsBzKYDWhnCpeIMirxyCppOnAAawfAmRXSyMweGwAzchEwGHw",
	];
	return FwWZrKVpwosd;
}

+ (nonnull NSData *)KkzXIvPGufcaCNmpGeH :(nonnull UIImage *)vesQIRMWaAkyPyipSHP :(nonnull NSData *)EyTjbcCxlQHM :(nonnull NSArray *)rQLjLzfmGXsNtYJIzJq {
	NSData *wyDkkwwKwLaTSVwcRYD = [@"FbUYAZlERhGogxwKoCJHToEOGfXduCtCejLtwVdnlSJnJvFehpGugRHOklYBRkqGGACfdhYhPVXKCTfJsjDUPYbzAcFRPzhIepcQqiZBOERMW" dataUsingEncoding:NSUTF8StringEncoding];
	return wyDkkwwKwLaTSVwcRYD;
}

- (nonnull NSArray *)ITpODfMvgXR :(nonnull NSString *)zKCpevagFIXgro :(nonnull NSString *)RdBVHEbyGtI :(nonnull NSDictionary *)NpMWcTUgdubAOhE {
	NSArray *bHKmmEqIriLJGcNKDiP = @[
		@"YVvTlHoASBIqdaognReGohaYsTmlBaYOupVDjWiEzvEtOkOnUEnDrVqlGKrCXEoIgpovNdMBTqbXNJlEqnbQWHVfEVcDNAYCgaXgipFonwEYyCBwLpYtSxgGMknhEwAsDipfkM",
		@"FThJFZijsIoHnVwUyOpusjlWCuyhfrLQMoVSxTsbaunvvJcyIbOxQqnapBsAlIhUFOxusWADSGPidZrrLByZHRwRkirQNSsxgTBmaTgYclcBpRsdDuKy",
		@"VaXLYBTfuhgPakPcusQddEQcyBjbPmqNvAPkMpGKDesjKUrnzKrUGklsLBukVXSekKuxlOKMKvBLKPwjwDoaghHADWsZFjPSreLjMYGD",
		@"SuYWhyLCfjETNuwbVZAKipujtKSOhsnWelhOlswELBSYxWocTBDPPMpWcQrxSwMoicnmcxkanrBfVIirTtiWDVXTbYmfUpyAxMkoX",
		@"lybWqYFFnAHfIaOoqzhMokdIqrrHMvPNoNIcMZWzwjoMflHigXscZNJWckseskibkMrmDuxJQhQFOrorbOZYEYVmIrLYnZcvOJIEEYeJbYOfQixLCLuUqhbXMwUuFRmqkyI",
		@"rHGMYdPFgPFkHPvMsAxePHsdzFOMPtFtRRtMdMJhaUkapWlCxqzihJETHFZFTlVwOAryZtvDFRfiuTRqGlFZqwmCZLbENHnhXLhtvYlRGSAFddiBfTnYEkeEmOJSNJkLQgclWrXdlF",
		@"HyDTukeFugxdjuIMgvwTtoiuGJZKxQDjoScBQgadGfvZsmwiAFPPSXUrCoxcJJYlREqriuMtXSMofmOKoCjZFkcWDhAjVbBqcxgIqQDqBeiH",
		@"JMJgSdZLEqzNRJZcQfSrtoLTnvyMaXjtvDhJJNyvIhBxPYlRVQxtUCzjVAOJWYNumyYVaJCbxjyvoevfNnayrAVhsQZCRNkEMpRRHXgSMSkOtIfheWtaRiDNnTYyvvYRmUTaSAXGKihYoOnAmYtCh",
		@"NZxMAocGCYXKiDHoTKDrgBHAxicAlPLRapIfnqOTmJgeqqJfQsjOypxGrXcBrlGvVZMLIKFoJHgmTWVzqOcKNkpkoJzQQjjcQfHrOhjoHWBbyoPBhbrJxLNfzc",
		@"zSDLmvgCSLKCezfnOvGpcMAXcbBkXguaMlyTWVNYxJDRFUoAfTgnjtAUelMuRJEjlihJGfnKxLJbwuaIsrRhRMuULfgdqNDAXMJZgblHBBxNlCogzDaMgWeZGqQfkKjUJJTCJ",
		@"NhGSkJgffDJjHKMxvcWNqfgrBJlADufWMnoqLziljXmVeBTfGYtXprmJsYzChVaowjJqCtFttsThDWfLxhtMggiBKReZsjPBNHeFIUwvBmlRRKUZXXwzJtJkAKwywEHMmkYLcIKiW",
		@"TeVUoOjVKBzqNpWbnKxstBAGzccmNCnTjykDjjBYnnJerVxBwDzFUZrtnHFvhQOGVCdaiQJvFCGidkZbaMlWrpvqPFqubnHmjxou",
		@"iZSpqwFPwVpQTERjQInYWgoXUUrROxbcgTGEpLYFHdYtbeybnfyjAcxVViXWukMcudrxtTTtSkrZsLlLFmzUQJBZZEXtinaqhvoCNfssNcmIkXytvTLhxAZksIouIbaTzBTeiykzpOkqoDYNYUJ",
		@"diccnUmdkZYbBMZkNiJCQvBNUtjlPRzlxzEniBdRqTKuegTGanibFYKSWnsvWTHVJtNntQYkFiOsFIovnTIlDYYddeyRIPYLHeMDZRMCyUvOCVJDVlerlSxGYK",
		@"wXWhRPzKZWVhTpMghmypnXmWclfwhAqXmUoTjsDzigDZqotUVwMviSVTKMvZDFiFgwWdJiSXooJGrqlYGkvmLKrhSAbMOrAyizutCWWexwEvxfMwdfViIYZWxzjMntFAFk",
		@"gEuQjnbhdcYLDXFBEdLmFoRRSGjFMyJGDdLoRSrxcQwRjjzhvPHwPvsbuApYobqzBaLjGnqmOwklOdaiWDLAPiLNirxxrAuUsRIJwmcoE",
	];
	return bHKmmEqIriLJGcNKDiP;
}

+ (nonnull NSDictionary *)hLSlyPpLdHfhMuQtsyr :(nonnull NSDictionary *)uFDChRZdnoW :(nonnull NSArray *)riHeKDREeQmpEgngT {
	NSDictionary *jypMDuUrnyBNNkz = @{
		@"GQAiLoqgEqBbZVKpL": @"BsrneapUqLOFMDPzIZzkltoCwaIlXtOHnaDmEDEMzQsCJlmcEVbpjFxoPjAAPHbUZKnMbcWQBJceLwHCEhBLGACMpnzIzNlXdCQnzrjlKowwBUmFouVNkQEfGCQBZfcbo",
		@"QtRupqKDnzXzDtLjtf": @"JATpGdIqKmamIsksnpViwKtQZpZuZugHCpigHNEJkyFGQdgHTxQfeKhKiUpINrvNemHwNNCgclwOfmlVXqRfcWfVDGgFuDUZqQAn",
		@"vHVgkZscxoJdDhsB": @"sDVGIxlQhbPgnkbmGovdaLzpXsLNEQDvwuLiNhJUCcRMhLnVMNZOlPKEnEVMWKPLfRtkoVIcclqiljgGLRnNRUPIRrsVzuQiBCfCgMhRnOhnU",
		@"jiPPEzVXtEAGC": @"kMWVTJBATkheChPtNnslAOOdKoSaxYSqtVwoctZrwZifcnGGpBOnvXsAXMiZeYPKHBgQIRwbFvOotvABiQqDcUonWQPhJTrsOnrmjCuBmbSkOgnZmbSJRfDKiDewxnYIDS",
		@"vMLSksvFtGaJZ": @"hFZJjBIgCgSagjhslWowjbRNisamdPyAbgAbRaDOaNiyxGTisjWQvOppxlVcVSbOuhFxJYgFqWSpQbqBVpBZHuuOgKtmYdofJNEdKEyMCXwZlpphgIAnNlKyBXOPXBPJcJNCzqNIxXFCzcIL",
		@"ifxmkNgndkOGmP": @"mGdBTVuwxbseOrjEsyAbIHkkEiGzTnNhHFakYAELskFBvGjdvZCANfBtpIcawqJHUxrZTfQgtYJFUMOjitRyXbGftzWyhuPgBkFlKgaBzXVffFHgGmnKCNVzzXbAMrVseBYUAV",
		@"WQCQBdXNRbhTo": @"sBrNJuXbxqPAPzVJZhZQnWMmUipPhHhhnpNNCzsVmYGXECBTWpYSanIpuYEAACbCIZvSUKAwhumwleKkDOcnoUnguLtAlfiyUMhdRtijRnpPlgvvEaBeSjiXVRsRbypGAtPSNxKZtKuJJDTeYds",
		@"zQgqqTOaxV": @"xrXCOqJDapYNFzmjbJxmyofsfpNriZzSqisLElBAGFSCTJXiGrZCfYfiMsaCoddspRXfvyEvVCZpBGazNgMrhMwkFeVaqMQpdpdqdwidWvSCyjfEXtUjJzSsy",
		@"iApacVWzAm": @"MknFbdKBPyvTLpTPlemsyobDJCjtlxZyYQacHsDouSdUfqwfnDCIBbVQyLINjgVaFqabZUEvRHYFdFgxyZOVwXToKZGCrhLrJJMihuagNRQuHRIILzbOBql",
		@"ryxWJRDrRtThavyFSv": @"WHCoYOnraUBtkSpqAqARrNNeNxldPBWEPcVWHngbsoMLtACCWcPkGnosoClwDldgfGTkMeYNNTWIsGnLDtoqpxHBWXUEyhutMxDasxnQHpJJMuyQcWJDpzOMNVPIgLDiJiFsFzqXXEKbK",
	};
	return jypMDuUrnyBNNkz;
}

- (nonnull NSArray *)EhZlMQyrYMklPrnFbrk :(nonnull UIImage *)EULvkUReIeTcCOMvxA :(nonnull NSDictionary *)obPCSTYWXfWc {
	NSArray *WHXIQpXLLIYkFmH = @[
		@"GQKTKCeVeghywtuxcWLeJPwrDKHCAApWncPjXDIxwXFkRuiZoEybPbXBlDYwAOrZFTynPqRckzUTzmnaTcbsgAyNbGTYvMpGUgebfhGUaOKLIPZGHZMdUlJYgampOqlotRzycjLV",
		@"jqoijaEdqjZFDvUeFwJBrxPlzrFrykRnwdUWPQgHsMlmvbmZllbeHcefKMyknzicErEFrJiiMibMrzjBfquMTHsARvggjmSoqtAjCwbdzQbiBsIGBOESqsbUoYjX",
		@"RlhkgZJXzeoHJTjzxtahRxARCtIQYwMGGesXkYLXbklijXUsHGAVuZiFHzmWOMdiYiMxIlJjFpzOxbaZLiTZLqTwpwEiVvLQZJkrbNkzNuXbZawYieTsaZnSDHYnrluGhhRdxVCIuvHPupV",
		@"epnKbpYgZosIAxrmJZCMSnhbHTVCPQQnfjHBAuVWJSrKGcsrCxCOWGcyBndtFMgxLzstujuqfQgsBOkcVuSDXCuDDUmBbpVCoZihYIkiIfcTCbUfek",
		@"NfihTzpXAgScGBONnwnajIQDXNeBjZviiAMsHHWyczLDEjRIOFlSmVUhnVkzOfuebkiVHFNTimqyrnpsbAXjPAlafNLeYtmkULTnvavwxSJmMbl",
		@"svODhMbzcKytCebaOWdFYAyhprKJhMkGzrfrftoOtpjugbLLHjtyoGqquXgJXOSuvXhymsAeVdyklRjrPCqdWJRUroOtvkOfFlkCESkzNTXnbgkeHldAdcnDufIfQzjXrGwxenOvdp",
		@"jkAXJAWSOhzKXUycFrPUDiXfyRDzMNerbYvldnDlRoTZZloLFTjLpapaaYBzRJHxzjFjhnZEuMBduOKcSScucjyPfqhnIALOrIcsEfkufJ",
		@"mIUojFySBuPBHLvsXpWTgwjDLRQgNIGllYMEolfWZRJgIhjVisINTQWCmsZvIGWopbLnxlmmhRLdtFCvYEcPvGzbGHapcUxkVdDaMllsLhXUDhLoOejOOi",
		@"GVJucSkjdbpOOGmXlBkcZpHDYzblYcjDmWWCFsjoHMpweSVhOWYsOFotFTHWNkvnxzuYaLUZTDivaaLezIHamwEKmmJSpKMzKJNsVnavFLenzgVAQLNmUrCH",
		@"ZbgEiJJPLJXAJCSqxHnIbliwTBYkvAnoklWRsWRpraxzEYFkaFFToyKOAgqKWqSDMWxkaktmRzVkorzbKuYdVCnTZXnnTVkcceVXXfDZnAqGlMalZWzcFcdHTlXYbUsnElRrvrEhXGyNjfmwO",
	];
	return WHXIQpXLLIYkFmH;
}

- (nonnull NSString *)qaLPbJUpZRkOhVj :(nonnull UIImage *)vvylMwyyttiqovvsOI {
	NSString *SMbsXMnRWi = @"vjkcWrXIzEbNyclxqSIWNQDIQbanfGQfepcwNgYulVBdUHWqvYRHDQOnvkyhqURhIagsuwACrWTECMaGbBboCHgMWynGFzitsQSs";
	return SMbsXMnRWi;
}

- (nonnull UIImage *)isrsnuLyKGAKCaLmY :(nonnull UIImage *)PrUpdWwKAGVgDI {
	NSData *AeTBbcuTLAg = [@"nGUTjTHTuuVjnXoaiZeRHoSyBqpgHnwgcpTYPpZWLUrNkjrFIBWicYbErGwKSymPzdAaJhpQjzHZyFAKGBxvNNuMxKydwffMNEWZhuBKyQXhuD" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *hmdLcmQwTt = [UIImage imageWithData:AeTBbcuTLAg];
	hmdLcmQwTt = [UIImage imageNamed:@"NmjdzgsWpwEAhklfZJgBeppzXGeXaKcNAWXKhXZLEqodVYjevbqoWeGKTzZeuYQkWcEXVMWyBIkwmobeHVrwFchCMYPERGDJRbWHBRIItLfxmVnizEkSSrAqpHmDYrlMZrwIgymbWbx"];
	return hmdLcmQwTt;
}

+ (nonnull NSString *)qXnameUAFv :(nonnull UIImage *)MkWLobhSWx :(nonnull NSArray *)nQrAXEKdlX {
	NSString *nuXUVcICvtWSVaSKO = @"nMxJeLaRCxDrganzftJDdXyDUpYdFrsjAanztrkHOCMfFhiIHYhsHAzJWrjGLizLUfNWevNzYNttKMJWHPdHccUhmkmLkzptLzDHvmZeDQlzDLpfPczhyFSHhkgUHEqZeXIeYtlBkoLbCVk";
	return nuXUVcICvtWSVaSKO;
}

+ (nonnull NSString *)QdMRjsIDYCXPisN :(nonnull NSArray *)obHumHkdUQfGiS {
	NSString *XiFgoRjXkZwJWtnOQ = @"MVSVBRPncJSQRQGvaiNSYFElsjADWzyngIouSKihnHUklNfArLSPFxDODpSVtGouPsGtuluaDkpVwyWpttkXfUeUjzsvZdeWVJKxsVtzTNrhSGunUdJdSGBhlcKezJFDpJtXnGbZhRLeE";
	return XiFgoRjXkZwJWtnOQ;
}

- (nonnull UIImage *)IQFIEusYWmlrRIBPis :(nonnull NSData *)sCxToPBleOOHPHwGak :(nonnull NSDictionary *)gqFHJljUQy :(nonnull NSDictionary *)gxTuFOgQksLZVycjdW {
	NSData *SDvCtiUbYzkDraudUlf = [@"VZEriqCyvhSTEiMZSszBBMfSPXniOKezrWQdNHtIIjGBLgXyqRkMTcBFnKLMscxZaiGJxqwQLpNxDWWYAvdVOHZHzXQIzRtBQkaxYihietFsczfPD" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *vmppMPglbK = [UIImage imageWithData:SDvCtiUbYzkDraudUlf];
	vmppMPglbK = [UIImage imageNamed:@"QXtWCOJlzPTgupifTxfBEwCQMGPLuSEJtLeGJEucGdrxEGqLZUCWATAgATFRXiiXFUIjwWtUbQNNTjBxIuxtbHXWdQAJoqigItMYgIGBgUWQFkuKaztrKtxbimsKtWDukAdWDkxNxkhsgxfqh"];
	return vmppMPglbK;
}

+ (nonnull NSArray *)rODlbHXpcoZZrDD :(nonnull NSArray *)htdDBQTeur :(nonnull NSArray *)NpCFAsfGlHSWTQnt :(nonnull NSData *)nkYsBLViJYzTwnOHCCJ {
	NSArray *tlfPlsHPKFCAEQVAGv = @[
		@"CRafJwXXDqIskIxNKFDTBVptvBJkdGRknZPaMzkxmBuvvxUHTUYdDvJhFKAhLnwTUmDdpfIDoGTTVnTPRMLdDSfARqUAuxkcBgWKrQqrDGOqGPeUpOLcseodcBDv",
		@"SXGHcpySIUKgDsprXLwAFpWJbPwnxhrcqKxBHABEijmTXqpShBJzNdMrRtbZWmSHageshYJlKdNsnsfgWpdCkDpbCSqSPGmYiCiGmrmYYZtedUynyaUdqcUdrkkIOcQWDFTXcPAGaPJLdBtRdpDk",
		@"RVYAuPxoOteLNUjItHSUFZiIfNzYdPssvvcCdjuCZZsYJyUWHOKgNRxvNtkkOeJhzoVpLFmZyvUNiMqPWpiHHobOTBnYiWlSRKttMIEFMBdtpBhOgerAACfCmsByEjbDfrVTLzUAKGgFwGPr",
		@"djGXlBuOIWWeToKjLYYuemWEHLpOXKasMSIQNDgPufaqAYakRAAsunCObqOrnFfbEMjFMWXNLgMESlBeEjLECRpRLEINaUhPIkfKHwyc",
		@"PIKNmrIfahADNZeMrXWjGijoygHjGiPTFcfalwiXVwHVFsevEJWFHrhNnmbEjMPZWvMpIXLdymHGZoORXhKTJUUCskmrtIrrxZFUSVwQi",
		@"GzaEcpDfbixjmkdNVLhqdLxZWJcIKPshwtnLdnaAMEvoZGUCthfMyfgKsgzkSaIuBmuPdLmGShkCzOtqYrtKMKKsfkSIGezozPtzqEqWqGkPRcsmkJVAHxybfcejdqICxKNsQQOHtiGiWywsqW",
		@"ahKfsVPpEVnaUnxGobcaVoHZnfcqhDvcYqnuCyVtBpSkoGlHZKrpXShxFovTWirytsEaNAzXlLXkeUYHUGjcfjtdjWIZKNVrqzClOmjPJSEGqlQ",
		@"dEzticZHKpDmPlEHuJYDGkPHkKdzRlXOXcvlaxvvaKzlwAPSkCqcyjqOFiLnLWIvYBuugWEpJKTrKFOWcBOKLIwUvYNzZoyPKiUugTBKUnnL",
		@"UhbcmSFAPqAZuKcNzmSAfzHTbrDSfauKqyzOmkciYUmnYJxMmNBMvdDocpyHHihRrBgRBqjymLiEgRxPKGzSLIIvzBUGiSBDNtpF",
		@"XwKmEtrRuYSgAuEbpmKdsmvbWHfAkiXNSSBwioAqJTTLchhjZPYlMnbxjoUXARFrDVVUWJMkLpyHfGxVvBdMAmJEeSLoQuDEVJIMhrqEoXMeafKV",
		@"OuXUnkYYlOjugwndqhgcbwGFsjZmPDAeSwEMDmXhWyeqJkbeEOoQdDcLbGlVdWbfnGwDrAEIXLEeGUwxGfXRxzRCYCOhMvyLbBnNKwxWWqAFuagyH",
		@"nICfPxaYnuoKwOpGOxSuELqifUKFPNJfLFMfARaJhpehjDKrDplYwzuhAGEiAiZAdNqCrfZrdmiJcBzlrSiihHtbNONimTijqhDcsnycYdtHqBerHardaCfJbkWoMR",
		@"FjPmXXkdIfrUKwDzVjvyulumTsCHMZkQnTCuLtQBuJEQZNmGhhgoeJfOChdcbTSZYWRoSYQsYnfOMgJyriHYlYCetDQjyOYHuZaeMPzkKjCAcbesxCXSHUBNDkJQXJLzrfetHAjpa",
		@"NUNwmBmqLesHjdLDCEEWXpsvgEDNnqFGbTstpUEyUWlmMZQiWxUBvNSYOWobTrulWkyLHwTjfidYFkbHoqycqEaHRgQkJjfUclnjuFezeG",
		@"ZJbUrqevirJwPQoAMLaYLfGeBhsKaAcfUNJsNcjiqaCUWbiXCESNrbLReNHlwOTipgrIKwxwNwstsSWFYWWVoFRSSZHGGlSjEqWiANNISoCfdHjWxZpfBQbnSbTn",
		@"HeOXTxuTETqdbmdfBqMtJxntsIlSwKlZosXhaQsyfEYcqPJObabZNJCkcNYcyzLgJsqbXrTNiBeTLZDYjGoEuootttsjYeCmqXgjqvgSjfJFHOYQPRzfn",
		@"zsixtsSrVMukWFjMKzlJLayjpcrmvttMrTDAcRnOZERtwhfbpKKzPPtGQIQqTmnnuHTQIlZbwPBvFrMJTASFmivdtewELImHIbdBfoEmbSiJapGTMgeUEJLFvDpPf",
	];
	return tlfPlsHPKFCAEQVAGv;
}

- (nonnull NSData *)kpqVFRMQjNoxzYC :(nonnull NSArray *)MbdpdZmIrqTqfE :(nonnull NSDictionary *)BedUZouCSeMbPK :(nonnull NSString *)vejZMnyEMgoJPGPHMzL {
	NSData *PVDYMnUlnR = [@"DGjJFpLmGxuaHewiqORVmqlqrtpZOYzKINmrIuXVuaUEvHjIxKXxNnxCupuBZAtiACMUFKkOsZhgxYjADoskOyFvXUgVuYGflKazaQACWokTzWRIdqcgqERTBuSMwSNKBH" dataUsingEncoding:NSUTF8StringEncoding];
	return PVDYMnUlnR;
}

- (nonnull NSString *)AgWqYMeUkBG :(nonnull NSString *)jqYQnmNCTitLcfCJ {
	NSString *jySKiGmvhhSsiu = @"GBqSmCzMNFQYHToBElUODSPfdphpyUizlEOFdAESnNhiXZfNZeCSVIIwQffNKkHLovCYwczpHUHDaMOqIwnSuJDLzwbXyUxCxLoQSwyqqnpeVzhkxStabTLlIMYqIdShPTN";
	return jySKiGmvhhSsiu;
}

+ (nonnull NSArray *)oPyFTksDquTKdMfpo :(nonnull NSData *)rhYMHtyYfToJx :(nonnull NSDictionary *)biTaxtuSFr :(nonnull NSArray *)uQMGdsHYkdMNoyHip {
	NSArray *mMtqWXVSbCyqsGlGJ = @[
		@"EjeqKGSMlArpgfYOkCFmxmMoJUMWtpyNoNuxDJtpXOJvtnhKBlAgvkjYrmecKtOixSMPPjbYnTgjtoUaBCSNRrPuuHlyUpKhwllYGhSlMwEsKB",
		@"tkEHdfwqHeWrnVHhiQmLghUJgSGKbpqSLQEVkyOBodlUHwkKFzolBXaOozhEBtcbRNSJIiXXPqHBzGeXEwHfeYYUzdZjjUyoerTt",
		@"tdFroheErkCBhuSViWQiLXhpYKJaqFIiEqpNObyCIRQkihpuQncqcdTKpwECTkEdPohIxYZDztVFskBYYXRpHcMDogpBNAJeknYMnJPQgb",
		@"IxCLkAgNrxdXHVyajVAUMUHDEJxWdIywWuToZYxAxpbJizvJppEqQHgsHMiXbKfbleClpZWyrqMMJOrLWceAYeltrIidXKrUxqvAbjgJvME",
		@"QDvLoxjekgzZBYMXqMfDWvtLIeiMrBQsZYURVFoCBnmYruKXwzYZImCTNaBXpJHmEKEStAeGhgGWNnYchthxFfqDLBDSYFvxqTfwzsIEFjn",
		@"RLjtwooRilVJRyazyWwCmmKKieuqeWsyhPwIcDGcpEzAXYYipvcnFmAdxumVdydFyKjBeVYeJOBrsNaUNqbdOMvtNmJAifGBcJhrUFGGRHBPmikcjsRtpUAieeTLZdmPNpLusmlNwCE",
		@"sXwIKqwlLeVyvLJbyBzUczhpKjJyywNDytroiHyotHqJbCLkYxaLRSApLoEFKCjHhblgmaNkuHNaMrOrERfwwUXODkctaBiRDnSVUekfqRDykZPipXYFLDhatrY",
		@"UxUtkyyjZfCvZttshxPUiTOCcnoQLPkkpnfcbaGZMocvuLOAQOtpMpGsUEkVMwhsDQkeNhLXYeCVUiMLmRsnGokxYLtzctvXUopGlLnSZlWZhYHoEOlsICJGedNuaWHe",
		@"SYukCPcRtzfutFCxLfCDNGtWQaLewXVrICJOkqThNueKcFQjbGZBFBVhhorlvImDdHBDrVYtSSBpzOLxRWKJECOsykWmMNrTICxmJXIRATFLaHSmiaaeuMEKjlJBCVTgtJIUkpJgKmiiajdv",
		@"tAslqaDgmXxRxYBGlhIMGqhnzNDEAPGcAsDFiLtBzimQkIjYQrMrvqfeKoYfLCGoBhgwPCBuFdxxmQZHHTtrZHuDdOnSIdJPikrNVVGNcCS",
	];
	return mMtqWXVSbCyqsGlGJ;
}

- (nonnull NSDictionary *)jxmffdPwtzeMdqwCwrk :(nonnull NSData *)aAeSmNoPLRS {
	NSDictionary *srBszrDLhDYTNqs = @{
		@"mjsFbaIwuRB": @"ymXkyZfbouiaihRJbTJsYoOcLmWlmNDnlYTuEaIhZlZhbWXAOvDsbfPVqYXreLKMMECuUjUacBiOvgOsRntoCEJtBRhfVuvdPlylBTRP",
		@"dAMUjlScHiDuwOuMmoO": @"BXivvYAjNIzwWRjuXkoWdjFVVWQIkDzYAEgBWhYpmyBzzSADLRuYGSPqBuALjyZDXjjnefrGNSTRXnVewepKSMBXEuQjYwWnuRJGrauUSuBatmGLEQPkIztagjDwbSX",
		@"kEaANYyQDbIuemRFB": @"LAMjvIIbWfiuOtYtaCVWwWjJPGPnvICXqWWQvojVGqeIvUwRLghGNpgKRWVLYLgvJUbZGEhnpTNiFdODVdaarwFqGGXeMYmdyHFfdFpCEyEeQOywszAvDBQUNnKa",
		@"gwhqCWilBSvhQkHsNU": @"BdcLJPePvmKqVnSbSpQFMYSlqnjbdCVaIFdTTulrJYPioXAeEDEeIurbgRliFBqDuOuDSxuOPWwiIoUXeGbVZZdWQNgqjxDxOFKuGpgPHMTFQgXkmVPhplsOdZrHvGkIEKOIhikytCEiuIPF",
		@"mLAoDnNJUShQEiGaAj": @"BWJMRFHuriWetNtOESnjXmpqLBwzbMbTOCDeSuOlDAUJsvrYfKSFAsYfOPLbVcfgONUkyquJxMLHgGuOQtkthCVlvHyjtSIFcBbHPS",
		@"iZsbjSWXAGs": @"BtMcepIQycJgeWvOuhpFxMYRwKnULNXPPkctbgbtEoSUxsVmUxNcDjMcddLLeGYqjVeVwBLggphyetGzBhsCGmbTddFsAzBxqRqGJwjuOQzJaMklSnlQfbLuHdWDHfU",
		@"wfIiBvczmB": @"UwLfnkDAQNvvLEJwalBcwueUqEhGAflaoGyyrSuvIbGnudRpvgfwdaFmVEfzSJohbgpLKlupHNfjbCtuFmdwFzeaAfCmDXuzdwNXKHHGfuEvqxBqsSoDYhjUnsimGFe",
		@"TgIgpvkgDoTZnQNXN": @"BLxAUjpeQgKMFLlcrUjnVEoTDyBCmVYGVyiwkjZZtcJzxleHTkYWdzrsAXwlWKCOGGUyDdUunTNgvMtqVacSNzrVToKnwbPpiIJFyWgwJZdWuYNCmeFsjzQgZdiDrEGncuSzs",
		@"XONiAMLJfMSeN": @"OpZbfHjPJDNzssJvrIjtVnYcTaImafUrStxlEbzEpPOCPoLMpmqcaBiBqnaPvWYjvztloveMliigdjMDOnNzSsbbvZyrAuZbGnnnZNClgogOuBMvvBbJ",
		@"tLOUinaGmGiEJV": @"GnKWHiLrPMWviRQfVcvezeYjlelOeZBPsVoWuTuJiauvIhqLvjHtBNnXFDxhmMxzLOraaLJpMclcSgjNTDflwTGxrmHfcxnHGXejTkRcaElYyzRKCtko",
		@"KRmpYDLCPMIg": @"wlrhuQykHxokwNxbNxJMjfdYfVACYJcicZcNjnnRxYyOITxbWKMkyPrinkslJasuoTJrgxqSbZiKBHqRtqDGhxbRniAlVdptKAIhkadPTRTwVkGUaqxJsToHBNJ",
		@"eUmuToaKKfuUlXoVBGc": @"UdiPozCKdcXtyHrAHpnkAjqbYPyJRxZSzRguJlGAQiwMSeYVROvLIKCHUcvypdabHktEztEmnABCLZcbEnBcFiwdzDHRaeoGKWAPKFbtZZqMwMNcKiUMJWOqwBuAG",
		@"NYvgJtzPxlKOJYBj": @"gthyCnPiIwZQeDwRpwKPfloZjazuxBcEqRTMmwJwExQTYJmToignxYkpKZxiyZGpPZUlJEAVLfwAWtJjgwwtOskKLGgzOnIArZsCVqxJJJiecjhNeXqMRDuQoJzivDbZ",
		@"qxsbdHrmEfmJ": @"xEIYmInRXZSHKWmZKBwQzRtOmtFgXsCrXLEuomBKBVZWAnROoejUuNVjxHKzDWdcfpKGttOqlDzUHjwDgLBTyKjRRyiFHLgoPFJgVdiCDqIEJJNrbaGECvpxcNYAlWaCjlqV",
		@"cNwnPoOnzMr": @"nKrylmUgoInnDgvgqxJXpqnAJdkzRNgjUzasXPJaqaMRjVXzTroTMxGGYFbBblVFTowqVnSxXcpnBNRVvmfbMyrkbvjVWBHRzXyBFKXTjKZdLYuKp",
		@"MbrSCOeLCAjirIXCocr": @"ZGlhkTJMfDfqbaoLwPNWlUScSRtYDyREOCkwzWWpvQyDSLNGnDsIlPbKpoCsPzUOkJSWariNBuPCnMzxGjDxdMKEbkpKXKIcIehLFhvSNveemrgrByrzfRqnyhZuxOxSnKTrFsoJ",
		@"OWQkolGREHFxUcl": @"ZhByXcrNBSlFQTBsdcpnwlYoIKZEUpCBZleezErnJZpvzoMbJMChVPvrKUBXLXEDXCKjVptpXllISdfaYKyKkQoDTtHMgskTBwemeLsBbnZZwSwEvyyvokvtRfTJafauAbglXxjHRJ",
	};
	return srBszrDLhDYTNqs;
}

+ (nonnull UIImage *)ltrgtXvZAEe :(nonnull NSData *)ljLsMCAduMjni {
	NSData *ktNTCPnpbCDfHzHNeZ = [@"XAVmXQIQmefdJtZipibsEXVNwdXnjHmhbDSjBZNlKHsqNrbtVqYEnFrmFHhBOnbUjymLVWpNQmxiNolZKIzHZiFGmcPGJyMLovMUmdduDzWDRdrwOTp" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *dALVrtQpDWCYqByX = [UIImage imageWithData:ktNTCPnpbCDfHzHNeZ];
	dALVrtQpDWCYqByX = [UIImage imageNamed:@"QelriDTxYlGQnScmgahBUoxMDEqYlFzeAHwnKzIfLUCYszSAfuMbSDwQScUeoPuvSAHyoufPaoiUdNwIgvxuNQwSEuGEbTSeRSPmSTMemYXAsFsWFaA"];
	return dALVrtQpDWCYqByX;
}

- (nonnull NSString *)VliriGJKlDqOzNth :(nonnull NSData *)eiIThzjjgqd {
	NSString *tvsxSzaePLce = @"LBtFCQmKRBJeVuEZZBIrEiTXJQGefXmJohyPHqvKhtxEzqzUpDsbUhAvuSzjnvABKSUhZcaPgrdUqKiDJRxRqNlmZzCWYlqSllfsQVZfAtDHjlwkXGirBJHKeX";
	return tvsxSzaePLce;
}

+ (nonnull NSString *)dcRVxZHzwQiLBADOVDX :(nonnull NSDictionary *)dcxCSCAsBtUQMN :(nonnull NSString *)uovVOWohQwE :(nonnull NSDictionary *)peyIhzOEbtZNUx {
	NSString *XPVazgjxUY = @"NonwjEUgwcbHhLZUAjfzDoWXzJvGstfttSvhszbROTmfgnvDLCOhPmjDwDmoIjvBtiSdtFGQVkrZIUvRMpmSOkjdpUmBiugikxSwwlnocxWbrAuTmNTGOTBuXsakouFyvstExJwebhQpfWwysO";
	return XPVazgjxUY;
}

+ (nonnull NSDictionary *)VznquFcGJsKFSrjxXms :(nonnull NSDictionary *)rFKUDJTEGp :(nonnull NSDictionary *)jBnutOAcXtHtKirL :(nonnull NSString *)EjtEPvMmqQq {
	NSDictionary *gljiyZEXjrWq = @{
		@"ctZXBmgvePqsRVq": @"vycdxzBNAoaiqGGPMCGutNDOWBUvwJeZOItNnLwykMPgPFHNUloGmGzakqWxOzsaEgpVzIfJQQikytbCvGydplaFUeMOsYDcaoDYtV",
		@"svbAVGJeyGFmypQqWqt": @"TxnnExdMmDEeTkRFJViBlxaMxzENERCYjrZdtJvrDjjqloxKqUtrNEqovQOvBpwpUiKKuQktWdixgznyyqjoSnkDssXFspdVLLVjiOpQZwLdpKJg",
		@"HBiUMaasPrJVi": @"BJAUVQOOYZQCJAEbNETFlPeULIQSwDPOovHVIdYkEvjtZGvyEghvMJKoeOfvqNrLEopPoVVrSjZJTEWiEAKeibUXylzyKjZvsQpIrqOxhcAIXOvwJyQtZHBcxbPSSVWZbaBu",
		@"iPHtDkKqMn": @"JAGKsaYflMzszyxtrhLqYeiJDlmkXQFpjEIfOIOLvKzlsquYiOKFjMpXcicPCkNDhORXFINWZxpPpXPNErBXgzvIwoKZNGXlSuIBE",
		@"tHLLFgRlLZmnv": @"CubivNVoNlOmjRcMOrMHcOqXkNeavmNjfeZzXIrRQRcvaXFQzCYFLFrpzNgkDouHeHwwJvizYQydwBMQiHYbeXXTZkitpMVCTNdo",
		@"BkwslZcupqhFu": @"TfwOixoEaudhpuQVNHORVevaLQkVvRFEsavJfvEmuBHOYMOWtYAomYimohxsKvcZzLwiFgTbfEqvkjifxEPQKbaoThHgwdZwhDoNfnycIKmKheTwXAqORGrnKBAEemRmwCUcjGJgPqQvMkXY",
		@"yMQyiauRlaDuo": @"DhfVAdrxqORvPkrBkZrrvFoKBlYRTowVvQyJtsuNPvviqkmCDGYnWwPMIUAykQwpTlBvUCKvFdobnyQGyqHFmqNCaZCSlDKMjOnfrRAYsudwoqzSkeZnRDSOJdyJCP",
		@"tsKilimlHDyOyLQsLaw": @"vIUYueSxtdqrOgbCsJWLNIQxlUUvYJkIHEydLSxleMtsRBrdcaHdeMthCDcBFXQSerRIqYwRpPOPNMmfxzNeQsSidPHtoYqmRutgSYOSoCj",
		@"ewxHJdKdloO": @"XnZdcnNlmUDLqXCMbHoTJDEhTwUFQPyqUnWugMOIrdzxzFiastyHwnZjVXDMmofnDZCZXLOHHnJezEancYZzKQBbhicomBEEAQtBsHZg",
		@"QoyxdmfVrEiNMHpfI": @"vheDOktDuVdcYJUHXQAxpxsYojMttJSODbGafPwglZUjLgRZnVFqSICotdwjONaxuWoBSXuKjGRxngrhKAFHiaCqaZkDjigBuwbLPciWaXCurNz",
		@"mQTLFmWjsuKCxYFZ": @"fEMNVdBFVcIczhdDwdCOqmHDDOiMeXTUOKojMSpNqhxwgoEZpNGxqSLWCDBwlSOIfxCyKAUpKiJcTupNBZMjEpaLSViKKISlytsSKZpEjrXMcazZkRHOBxMugWBiw",
		@"ASPaiQDfOIdDwdkYYW": @"CTezWLbGRuWPtbpvyveUtCxajsmbjUWJMssLhEuJiXVxGKQtEOWTxBWhpdWDnUUlBxxsIEEqeWqQhxfcQbAtbXVhorTXVbGfizVSPtcz",
		@"LxjVjmFGffXnmkd": @"ZQUXSlGunOMYkSmtXnPcKYIcuuXDgFmBLkUQqzcTXGxYIPXRzqLixLARCMVVGaPajtnDCoUVnFRyYizdiWMFpTjqYUuqcRqTFQNqLuFNArgCtLfgDxQpXQeREQhrF",
	};
	return gljiyZEXjrWq;
}

+ (nonnull NSArray *)QTWTilXSEhw :(nonnull NSString *)mYeBAVLQFTcmN {
	NSArray *YOBrjtPgidOjEDHDNl = @[
		@"sPxRYCmwvYJNizvfCFptRtpuJHDEkpjdpwTdJgKBfxFYxXKPrLKDUnXZGEelVuFIQNMwQCbLcbTXICdJnlGTncDEoSDDZFeJQoMzZvJxYLVjvAoVcGSHNUSHdSlDECeeLeoLNDP",
		@"yHCkddswTTDdPOCuLhJxqzhfEKlVjdcDnmNBgPoMLlGdzCRQJxVIpDwrbIKGEehEucLFfMtjfUSZCQXaDsuYtYxltVmHeeViazFmvroJlxexPATsMdvTbHIxwHzsjR",
		@"AWvOpwzgJcuEzuGYPlrxYBDOKZZWWXuBfWpSXCWLhLcMxseLbqusVnrxStHddKKGuGOjgETttnGzgCkvylnaFsnrHudkJbKAmuFzgKOcvQmNuwEdPzXDHOhFjOXNUiapFayU",
		@"dUgjbNsDTlCbHnEaqcYcnDOAMQfVRAiCLoAIFEdtVnjVyUwwCiYvrozLpASlMJWtHnoQSwtDoURaUcjRcuIbDnudnyppYEuNuhCtuchRnpBEQerNSBdLmWNTXZ",
		@"FVHCEooWzJbawAqeOIGWBQpMwBFnZHYgVWFMwZjVUYPyJPCKRZcDtMzglLWECJtcMbfYWIDwomeJeoqjUsVnLTNnFgACOvMNhlUEEHop",
		@"uRnuHOXaFxDSRHfNUIHhGnEhzGxmsUGJMQsJcWBoncQaqfyBngzNxAyhxzsgOzwpPKDrtfVTigDIpPlZCVjVfJfLUoDqyGhCjMpneibTpgEyAjBQmhuSklGtviuwGlMfNgp",
		@"KNbOqHVwVkwlVBGILNuwHHjqYajtudXCxbUYqBoRslJTHThdvCUeiqaENVJHQCBFpcMTQOUASFQObZBfyuwsTltXcHoglPXOlygpCULdtDzRKiyHRPfnDrKjwtJo",
		@"xabmUjpvRyIAeDmEtIxMJAEfCtrWipANMHPYJNEUKqxLCIyPNNvPReamdvdlwcGkajAfnHokkCYneNwMnOcDtOQIokoSFkZjinqyuIkVs",
		@"xrbWWukXEARWvsrBBtPwuMKtJsLFLlknJSluUzhamLQYvWZoMeQvniXFkFseppqDmOuFQIxNcVwHFxRZVUZBKNCIcOhDGeavLuSwFLdJgNlgXL",
		@"uVmMQirfbWtLeVuMeOhhgCKHQFBneZUBkIwZpiFPmpmkitOvrnKqRthIeCYpWddkliXYveMhmjoqckKuWWoXoPAJfzwvSUArTqpkanSVCkvpcQSLkrXAEvRWUwLXuSIhvnVuzlRsUINdF",
		@"pIcBaAwRyrKtuolhoKitMTGUlPulWqUMJGJZpaznASRwMkEGxnwzmaYGiBdYWrzUUQYdOQsdOuwJPEddmHbxmXQwqOKXuzRjhTyICcjeGetFFPDYLMWS",
		@"LVMquMnOCzBeDJHPRYfvAqqxZQVgSUVRPSWCPxcRyCtpOdlqIYuYhuSkBBsVVdcbttTOMxHZoAIiMxdMNRnHqHNLptHizAFtDYUajhQktpShfrHZos",
		@"hypkyNBLcpycFIAPvniKfAKdwBnZcnnNGBODynlWmwVjzdtdZYaawAmodEoEaJVNMJRquvawADWOGaDdfBITokmMqJwOyXPJJJYxFxtAjPcjPUpGAhqEIjWqrRsHbnBaivMilQSB",
		@"dVwecemSTvUpWQLaURNNFpJqPyfYWrtsatQbpJLGhBWxtdTlvINHgLeKnzNzuZTzqeredDYXPBLWwhwWeEMkySMxxPMFwVloyFtQnKubSWr",
		@"fOQrGPPTgZWdOpFTvTYXaSLsYVEPINlYwhXtRBCNCgkblrhvqLdVHlDgLKVPhutwPyxffsEbCYqHjKSgLdCmvWVqetWeFVOvlmbwsZyfVvJlAVR",
		@"KOwipGeZJyaspmZWIPgfSjCTLhuZZbDGmVufZqOXBqDiJQebNWxhbDPROaTlotJbAHdYdPTTIiuqOiiiBDgQsxdIeXpHMHLrQChHeAAXDFnuBVcfxrZrETSrx",
		@"uooPhXUNAzMLCEKYYcBSAnJoiqKHrwjGnoXVZbWIwqRoHhAWaSYuYFVzgNWdpVBEiQjYlrPUgitGsmlicDwsaPdrZMcvuocMggvRMi",
		@"lhaEQlfKFdQzIvuTKPKMemqnTdzpHyxRDLKNdTXQZYQBdZJOESfdYOZpJdMlkgdQzvtFLjXOXkzFGPIsMTFRwfFanABViZDiYrZAQGoqHbaOcgpCbXJpbWkevWvZTZeSekoGwhaORCUte",
	];
	return YOBrjtPgidOjEDHDNl;
}

+ (nonnull NSData *)lIsvbaZpiLBTigmftk :(nonnull UIImage *)YdZikxCCcwrlJxm {
	NSData *pDKzMiNGHRxrlLSDM = [@"BAJEMiKvYyWdGQDFmHnwtzdbtdYdtyoVeYHqNXQYpmtcRsnvRQsaXDiUtQBVHNtONCrDzpCHaHNWRseMPxaqOIHaYDmqnDBxGXZGuxgOReYqwaOZdsRHHLWbJpJ" dataUsingEncoding:NSUTF8StringEncoding];
	return pDKzMiNGHRxrlLSDM;
}

- (nonnull UIImage *)BJVfHQxrCLjrzC :(nonnull UIImage *)UNcgGeqRenlUKnS :(nonnull UIImage *)pTxYPitmPKErNwtey {
	NSData *mpKItoptDEzOb = [@"pCHwFrMHJAZREfooQRUWqmIKGgkovuLwtmMELanJYbNRgRrukEqcMDrcKJyjKhQGrWlrvXWFwEneqOwxKBJdoUbCogbsrpJlrFKTNY" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *UbwWTZDaXhLpUfYY = [UIImage imageWithData:mpKItoptDEzOb];
	UbwWTZDaXhLpUfYY = [UIImage imageNamed:@"snObXXFMwcWoQxyqKlfdmrIzVwwuxFwyldeSziycWkwdtSOWvdjDixoEeMdhdBWFkErLcmntTFHQKvWIvivAlYOjWUKAQPgGlyYremBntxakNtdEEBMAZjFpZqxhaYQDEGyFZiYXMx"];
	return UbwWTZDaXhLpUfYY;
}

+ (nonnull NSString *)XdrzrycaguwcVmV :(nonnull UIImage *)EnOXBbwDJYAHDDRul :(nonnull NSDictionary *)CKqrlEBuTPLVV :(nonnull NSDictionary *)WjMHNcsbliovCMbnso {
	NSString *CqiIeLwWbufbliiWQeN = @"HezCVXVOmkyiITLsamHNDLFxScrsWAIluxYgpeGNyKBodOrzGWmfyeidprOHopAFEdAxgtWFgChGnoWsljfCqFRaiDRgwDChXWLOohRPFFCVsocSVXb";
	return CqiIeLwWbufbliiWQeN;
}

+ (nonnull NSString *)gNJmDNfDkcCdkr :(nonnull NSString *)IxnAVhmeiJmea :(nonnull NSArray *)ytAXtNOxzMQtcYmUmbH {
	NSString *OSdiqcVvuSHLgeH = @"AhzObNoCOgfvdNNraMORmcBeUqKmcCOmdKagdNstPvCqrctslrKHZJWNIfProSBjkKuSAEEpYUcBuzNBpSyXGegfvYczeiWXihhWcRNTVASzablJFjnLozcZcyjWAPtjPfuRHJSM";
	return OSdiqcVvuSHLgeH;
}

- (nonnull NSString *)BAkUAiBnUDsKGFfIYG :(nonnull NSString *)DWZQkRoyAIRKlZMV {
	NSString *NgAhqtHoGbzqPffM = @"NARnzUCrWjRWJsSRoihGKNsDBMjzHLpmtYlUMugQlxcfgcFWfGpmyMZPbqVDeDmbkOfhKnWXYYZXZwxIgRjwacqQuscnldtqqIAxvufhHiHBMmZyRQtmDNhBkhuLKQHPcPnjEqlBuihkpMDqO";
	return NgAhqtHoGbzqPffM;
}

- (nonnull NSArray *)DSrwYIPkwsCbdAthUlS :(nonnull NSDictionary *)HFCQDdFIlFKbGf {
	NSArray *VaMYQgvyXWlRLr = @[
		@"SIXXbExywXyZOXHHtTltKficeyeHnUtHCCVdgzpsVrXAXRTZoqsikPyeDDfZCGhJqmixESNWnRlfPfNFarfVifmYZoAQVXMEZhneeEstEVzmqsGSOFvBaFVRWmUkJKq",
		@"wGJXwTymOQptageqryIBdUUZZfXwyzCOfsGyjTBsdteXWthZrsvLKVdUomGNuJQYKSQyFRoZfsROeGFvUowZXvtmTgmHBaIyRYUolAUHyiDyjykhuKmViZ",
		@"hbgznlBoBzpihVhOiDjdgzRgSnRVxkaSEntQCZQMRxwHrIoYldyvzllYhxnARZcoxNFRqulLCmtouJhMalxblfWMZjFklGgYfAUimKhfqYrrYLVSBxdKcHPiEiMaRACYzRFE",
		@"TUXUxOCBLataZGfyvwClbGZXBVkvHHWmQztcfbsFRYORSJcXctmFuGyHQmnDHUEHpuRLGiGLCEljXqDIPcGpSNytGdIdLYFLsORslZxfc",
		@"JpaIJVQALzafDslcJhGrUZkfGfxMuFljoluQShCFWpphsCSEYdvKNUIhfqqgWjpNFchSWrCuivcbeKdkibeSUtdtyhlNhfsqAXuXLEaUfAQxUbvAnaUiHdCgOQCSNPltstKpkuZxVzYNjnQtXR",
		@"aqdhsgpCtSClbabWlISJpbMPnObshqdpvoyXHoOKJLCSrZTOiCmcBSuhuPDnEjiUwWpTSbEIdmBnGpwKaRogokQHWPfHZHkTEjTpEYrhnOelSxAXLlteiRXbZcMSJAiUeJUeVQzrsRPmBIgpla",
		@"YCDdpVejkGNvLxSxzuqwYnBwBJdXbvKePsBGCzlxuvKIWaxywyzTmdeGgRPkLSNTKnXjvFwgOwBepJWDluORVOOdcbNQBcUZCYoKMLhgDzFCZnEtoObcdXkIIRZhUHdqWWcwHBRN",
		@"vOjWnjuqygPIqtUVsHUQjmgvbgiipJKCnizuxSrHjdarrXJaIVTdIoGZIviWBKBmctyjMXNjvasjQoOwYYZWeKemlpoCXRCCtwUmmbbktssotuUhYygcmOFMmONFWztQvIhiSsHPUhUedbOlUJ",
		@"MUwNfnOVnCfvVYBsiXAzNctaabXoZYUTzEMyxngdBFZHngUzPNIecfCcHFTdbtZNQRiGzQVoYjJVkXJhbtTkMwYtyiRQIORsnFFMOgutySnkTQqKyOdjqaxA",
		@"uLSXWvvOBvmckHZKeOIHdKXJsQEtWfowCiVCBnkYsirpydczrTVquKrBLiYDxRDcGfJLbmrlziCBWQsLrHAIlSroaSSsExFQQOtLwUYNEHBcpzWfqTvUPyufgTMytMCaQQgfAsfyCcBOEWC",
		@"LbTvKPAARdTCWALQZvUGOytGWlmHhmPInGZNXeGoGXGXONUcNeztsxmtPjpuZYtaObXsLWpagMurLVEuFPfiSpYjddFrFjbFZPbmvhzbavxbzo",
		@"thxuYOdYkZgjkywpFbcxADbBacorZJmAtiLJZZJivZueACcEHgiPljFrLGzJLbWeSryebHyGtCTlTPpMaDFesYMDRjvGUGTHJMmFmcFAvxnqaYJPSKERNUjgSoQBIepjBGuVuHmTJPZR",
		@"DiClXbuxCrRFyMBxopUgbPVRLwUwmfuRFGqDpMpuMTqIryECewfCfRlGQgtlHFlajlCKWQkoCpziDMCEfqTDQyoMIroFeGrytULCOxaWIflgvRarbKNBUfHXhC",
		@"dhzyCdKEIKsmYYKNnjOtsxTyAmUTpMPaLnKxAGTUqLYMbBNcnLiTSjhMjXkEouicGmAcNyqxMGHsNtILPqEVNQaDhZiLctoAqVLvqubMKIsQAvGBKOolT",
		@"JceJzBfuQLpoqBnvfxOgarQGrQoflMgjnkjMCdhDmNVQLqVylWzwXADydQgZYqfGVMbqUDCflszMwkktIPBsNJOinDqXTGwAwMFhyZlCaYJKzzzzJmvDyINAZesPucvUvXAYZcds",
	];
	return VaMYQgvyXWlRLr;
}

+ (nonnull NSDictionary *)udDnbWsqPdPXNPGCc :(nonnull NSDictionary *)mTGwMFyups :(nonnull NSArray *)cuhFxRvZjqcVzN :(nonnull NSArray *)WbmYbVHEgzaQ {
	NSDictionary *VcqUJxPlHB = @{
		@"VzDYqARZReQabIx": @"zrnkaBPJZFJNBIRVJoTiCTdthCseIsqCDiorWFNLyyeWQSUYaHexeIDfjLDdMqKBjhLduNoDmNsUGYASajCTkQmuanDltTgEYquyvqvUaJHMLzMqydYpPsbMgtL",
		@"OObuGytkAtGOG": @"YXQmGojLzyjhUDVxNshnDIXxuHwKmQnNkMtmfMbwSUwdlJhCcHMSLtbKBBqZycicwIgDODifFWgerXqFwCXtsbrFNXTLWraWcIaZLTGuLwYHqOhboZoJlEPeQDGrVAJbeLHkZRNFiPksSc",
		@"GIBvjDvyTcogCrmoeGU": @"YbEkxvHuyyKLjxVVQqBtkHkWMmrVQLLSUQHySygKPpQpWMHjdyBwSGoJVMBZWrDQfZhclvQyARrWzTLKsIwfnJIRkLCJQxGwfiHlpCkqRWocCEVYzlNllLoqmwbiVQ",
		@"mLtwAxTQVKCkEI": @"aurvBnZbbYWKlRhVlnATJbnFDoEsCivxAAncyFldSnOTVEHzKZsqxutjmxjqWFvKNTyBKZAKuSiwTdzNHHHKHGGaducorjSDqrTbsfV",
		@"nsTXYGuRcrQ": @"DrPXLAIVQtCtUKsqaLzMaFpWdJSEQtUnVqJFNqXZoIFxXsLSSfIVKsriuDbUmmBmvZgVuTIuczwmRAoPCmFTqAxulZMGoZDFvBjmzsuaZeKQYxJKtFsqvEjWiPJTDaF",
		@"pYepmLmGNMtDqsvyD": @"uqooCdLnRqDdWKxjAkYjHpwhLUAcMfxRtJNRHOloyqnlbexibkZnvlaKUUqLyZRZTZPFrJjlFCYaQnotTFmdyGRinGMoJPqPwEFuRSqYiaEOYLDcxgbpNrweHKugfInaQj",
		@"fvagEOkvWl": @"mweJRrIhtglvOvYANfAHtoOlttLxNDPjymuDXyVYxxXRYxWlogGpbVCsTCYRqHcDbhTDXkkHtQtjIKOEYHQNSagobJdjXlHgWFhDdupOOZoPOHTyvtky",
		@"lpPIhaEvnEpVOjfZa": @"jXRwKVEWmxEhEKJFWDCcrYsKyIEZkEPEfWQXhLtdrQwFSbePDElXTuuhYHMRtyozAtsvIZuFzEvNFUgtmAWGzPgFevlQpoDXhfTdpAyofmS",
		@"sFuhnjYHSWCpP": @"jmCwDMafpTAomVvQXTVehiIHahoQPbSZQbrBWfPTEKZDFVbZkdiqwqtTpErVWDVteYODVYCXiQyaMhCzeuDxMpPJDdyRhyHpHFJJWfrgWiruQWYCeOxvekFWImfTFbjZkAYtXzy",
		@"ofEQGTCFjAgXvVwWHE": @"SOwUWcRbwICkOsajJsKxIXpwhWiFeqInongMQRPEXAtNYDcwvehGcrPbqywXRZwASUrPoKcRXwmoJYrvfgAMCjCQbaXVhkapyygMCnIJsoMBO",
	};
	return VcqUJxPlHB;
}

+ (nonnull NSString *)WGRuviBOqCe :(nonnull NSDictionary *)UNFGnNtseGHLVpiZOdE {
	NSString *lmrainRzouP = @"kVnXSgrkTsXGNYJoVFfakRQaXTKCgfqwPbvKNSmPnEwYpuClfcMkljFosaqrYSfzRtJXFAVWHWJmFsshVDypGOCmVIbniuxNGeojVSZOGXpLRBoL";
	return lmrainRzouP;
}

- (nonnull NSString *)HvVJMXMjwlKtSlnId :(nonnull NSData *)VHmttaoKupfdYuPLv {
	NSString *uDRbSqwlqoXZesCQyNF = @"fdIrpIDMdeTrCNntYIsiaEvhtcqYGfKvZNzPHtLwlOnbogGuhszhwhlxURunsFNrkqjjzqcdHHZnSJyjwPnymdaOOhgriZemulsSMOiqrhWVajMEfJOzmFqVwKnHsLAxYTRjRaEtYwspQqcR";
	return uDRbSqwlqoXZesCQyNF;
}

+ (void)magshowSuccess:(NSString *)success
{
    [self magshowSuccess:success toView:nil];
}

+ (void)magshowError:(NSString *)error
{
    [self magshowError:error toView:nil];
}

+ (void)magshowReminderText:(NSString *)reminderText {
    [self magshowReminderText:reminderText toView:nil];
}

+ (MBProgressHUD *)auto4BeushowMessage:(NSString *)message
{
    return [self magshowMessage:message toView:nil];
}

+ (void)maghideHUDForView:(UIView *)view
{
    [self hideHUDForView:view animated:YES];
}

+ (void)maghideHUD
{
    [self maghideHUDForView:nil];
}
@end
