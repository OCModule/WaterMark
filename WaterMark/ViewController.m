//
//  ViewController.m
//  WaterMark
//
//  Created by Jack on 2018/3/5.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     UIColor *color = [[UIColor alloc] initWithPatternImage:[self imageWithText:@"王小二"]];
    self.view.backgroundColor = color;
    
//    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
//    view1.backgroundColor = [UIColor redColor];
//
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
//    label.backgroundColor = [UIColor clearColor];
//    label.textColor = [UIColor orangeColor];
//    label.textAlignment = NSTextAlignmentCenter;
//    label.text = @"王小二";
//    label.transform = CGAffineTransformMakeRotation(-M_PI/4.0);
//    [view1 addSubview:label];
//    label.backgroundColor = [UIColor blueColor];
//
//    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(100, 45, 100, 50)];
//    label2.backgroundColor = [UIColor clearColor];
//    label2.textColor = [UIColor orangeColor];
//     label2.textAlignment = NSTextAlignmentCenter;
//    label2.text = @"张全蛋";
//    label2.transform = CGAffineTransformMakeRotation(-M_PI/4.0);
//    [view1 addSubview:label2];
//    label2.backgroundColor = [UIColor purpleColor];
//    [self.view addSubview:view1];

}

- (UIImage *)imageWithText:(NSString *)text{
    
    /**
     这里之所以外面再放一个UIView，是因为直接用label画图的话，旋转就不起作用了
     */
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    view.backgroundColor = [UIColor clearColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 100, 50)];
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor orangeColor];
    label.text = text;
    label.transform = CGAffineTransformMakeRotation(-M_PI/4.0);
    [view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(115, 35, 100, 50)];
    label2.backgroundColor = [UIColor clearColor];
    label2.textColor = [UIColor orangeColor];
    label2.text = @"张全蛋";
    label2.transform = CGAffineTransformMakeRotation(-M_PI/4.0);
    [view addSubview:label2];
    
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
