//
//  ViewController.m
//  LatigoSheldonCooper
//
//  Created by LLBER on 01/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(BOOL) canBecomeFirstResponder {
    
    return YES;
}

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}


-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
            
            CFBundleRef mainBundle = CFBundleGetMainBundle();
            CFURLRef url;
            url = CFBundleCopyResourceURL(mainBundle, (CFStringRef)@"latigo", CFSTR ("mp3"), NULL);
            
            UInt32 soundID;
            AudioServicesCreateSystemSoundID(url, &soundID);
            
            AudioServicesPlaySystemSound(soundID);

}






- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
