//
//  ViewController.m
//  YanhuaTest
//
//  Created by fangjs on 16/3/21.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "ViewController.h"



#define  ScreenWidth  [UIScreen mainScreen].bounds.size.width
#define  ScreenHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()
{
    UIAlertController *alter;
    UIView *myView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    
    myView = [[UIView alloc] initWithFrame:CGRectMake(50, ScreenHeight/2 - (ScreenHeight/5*2 - 80)/2, ScreenWidth-50*2, ScreenHeight/5*2 - 80)];
    myView.layer.masksToBounds = YES;
    myView.layer.cornerRadius = 15.0f;
    myView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:myView];
    
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, myView.frame.size.width - 10*2, 44)];
    labelTitle.text = @"告严华";
    labelTitle.textAlignment = NSTextAlignmentCenter;
    [myView addSubview:labelTitle];
    
    
    UILabel *labelContent = [[UILabel alloc] initWithFrame:CGRectMake(10, labelTitle.frame.size.height + 10, myView.frame.size.width - 10*2, 88)];
    labelContent.text = @"慢慢摸索,一点一点积累,才能有所进步,祝你早日找到一份满意的工作";
    labelContent.numberOfLines = 0;
    labelContent.textColor = [UIColor lightGrayColor];
    labelContent.font = [UIFont systemFontOfSize:15];
    labelContent.textAlignment = NSTextAlignmentCenter;
    [myView addSubview:labelContent];
    
    UIView *line1 = [[UIView alloc] initWithFrame:CGRectMake(0, labelContent.frame.size.height + labelContent.frame.origin.y + 15, myView.frame.size.width, 1)];
    line1.backgroundColor = [UIColor orangeColor];
    [myView addSubview:line1];
    
    UIView *line2 = [[UIView alloc] initWithFrame:CGRectMake(myView.frame.size.width/2.0, line1.frame.size.height + line1.frame.origin.y , 1,myView.frame.size.height - line1.frame.size.height - line1.frame.origin.y)];
    line2.backgroundColor = [UIColor orangeColor];
    [myView addSubview:line2];
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(10, line1.frame.size.height + line1.frame.origin.y + 10, myView.frame.size.width/2 - 10*2, line2.frame.size.height - 10*2);
    [btn1 setTitle:@"cancle" forState:UIControlStateNormal];
    [myView addSubview:btn1];

    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(line2.frame.origin.x + 10, line1.frame.size.height + line1.frame.origin.y + 10, myView.frame.size.width/2 - 10*2, line2.frame.size.height - 10*2);
    [btn2 setTitle:@"OK" forState:UIControlStateNormal];
    [myView addSubview:btn2];
    
    
    myView.transform = CGAffineTransformMakeTranslation(UIViewContentModeCenter, 50);
    
    [UIView animateWithDuration:0.6 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        myView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
        myView.alpha = 0;       
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
        imageView.image = [UIImage imageNamed:@"18314444_110732950000_2"];

//        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.view addSubview:imageView];
        
    }];
    
}



- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"告严华!" message:@"慢慢摸索,一点一点积累,才能有所进步,祝你早日找到一份满意的工作" preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        
//    }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        
//    }];
//    
//    [alert addAction:ok];
//    [alert addAction:cancle];
//    
//    [self presentViewController:alert animated:YES completion:^{
//        
//    }];
    
   
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
