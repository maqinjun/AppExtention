//
//  TodayViewController.m
//  MyWidget
//
//  Created by maqj on 15/9/14.
//  Copyright (c) 2015年 maqj. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>
- (IBAction)onClickTest:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonTest;
- (IBAction)fuckingTest:(id)sender;

@end

@implementation TodayViewController

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"%s w = %f, h = %f", __FUNCTION__, self.view.frame.size.width, self.view.frame.size.height);
    
//    [self.buttonTest setTitle:@"OK" forState:UIControlStateNormal];
    
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 40.0f)];
//    [button setTitle:@"Fuck you" forState:UIControlStateNormal];
//    [button addTarget:self action:@selector(handleClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.view addSubview:button];
    
    self.preferredContentSize = CGSizeMake(320, 150);

}

-(void)handleClick:(id)sender{
    NSLog(@"%s", __FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData
    
//    CGRect frame = self.view.frame;
//    frame.size.height = 300.0f;
//    self.view.frame = frame;
    
    completionHandler(NCUpdateResultNewData);
    
    NSLog(@"%s w = %f, h = %f", __FUNCTION__, self.view.frame.size.width, self.view.frame.size.height);
}
//- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets{
//    NSLog(@"%s w = %f, h = %f", __FUNCTION__, self.view.frame.size.width, self.view.frame.size.height);
//
//    return UIEdgeInsetsZero;
//}

- (IBAction)onClickTest:(id)sender {
    NSLog(@"%s w = %f, h = %f", __FUNCTION__, self.view.frame.size.width, self.view.frame.size.height);

    NSLog(@"%s ",__FUNCTION__);
    
    [self.extensionContext openURL:[NSURL URLWithString:@"MaqjWidgetTest://"] completionHandler:nil];
    
    NSUserDefaults *user = [[NSUserDefaults alloc] initWithSuiteName:@"group.maqj"];
    [user setObject:@"I'm widget" forKey:@"kWidgetValue"];
    [user synchronize];
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"test" message:@"message" preferredStyle:UIAlertControllerStyleActionSheet];
//    UIAlertAction *action = [UIAlertAction actionWithTitle:@"touch me" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        NSLog(@"%s", __FUNCTION__);
//    }];
//    
//    [alert addAction:action];
//    
//    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)fuckingTest:(id)sender {
    NSLog(@"%s w = %f, h = %f", __FUNCTION__, self.view.frame.size.width, self.view.frame.size.height);
    
    NSLog(@"%s ",__FUNCTION__);
    
}


- (void)screenShot{
    
}

//CGImageRef UIGetScreenImage();
//void SaveScreenImage(NSString *path)
//{
//    CGImageRef cgImage = UIGetScreenImage();
//    void *imageBytes = NULL;
//    if (cgImage == NULL) {
//        CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
//        imageBytes = malloc(320 * 480 * 4);
//        CGContextRef context = CGBitmapContextCreate(imageBytes, 320, 480, 8, 320 * 4, colorspace, kCGImageAlphaNoneSkipFirst | kCGBitmapByteOrder32Big);
//        CGColorSpaceRelease(colorspace);
////        UIApplication *application = 
//        
//        for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
//            CGRect bounds = [window bounds];
//            CALayer *layer = [window layer];
//            CGContextSaveGState(context);
//            if ([layer contentsAreFlipped]) {
//                CGContextTranslateCTM(context, 0.0f, bounds.size.height);
//                CGContextScaleCTM(context, 1.0f, -1.0f);
//            }
//            [layer renderInContext:(CGContextRef)context];
//            CGContextRestoreGState(context);
//        }
//        cgImage = CGBitmapContextCreateImage(context);
//        CGContextRelease(context);
//    }
//    NSData *pngData = UIImagePNGRepresentation([UIImage imageWithCGImage:cgImage]);
//    CGImageRelease(cgImage);
//    if (imageBytes)
//        free(imageBytes);
//    [pngData writeToFile:path atomically:YES];
//}
@end
