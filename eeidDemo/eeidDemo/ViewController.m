//
//  ViewController.m
//  eeidDemo
//
//  Created by ShenJunjie on 2020/6/28.
//  Copyright © 2020 Eagle. All rights reserved.
//

#import "ViewController.h"
#import <eeidSDK/eeidSDK.h>

#define kClientId @"edu_seemap"  //示例 需填入自己的clientid
#define kSecret   @"eaglehnedu123" //示例 需填入自己的secret
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (IBAction)clickLogin:(UIButton *)sender {
    

    [[eeidManager shareManagerWithClientId:kClientId Secret:kSecret] openEEIDLoginReturnResult:^(NSDictionary * _Nullable data, eeidSDKResponseStatusCode code) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:[NSString stringWithFormat:@"%@",data] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"no" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            }];
            UIAlertAction *skipAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            }];
            [alertController addAction:cancelAction];
            [alertController addAction:skipAction];
            [self presentViewController:alertController animated:YES completion:nil];
           
        });
        
    }];
    
}

@end
