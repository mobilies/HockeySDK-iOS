//
//  RotatingUIImagePickerController.m
//  HockeySDK
//
//  Created by Maret Stoffberg on 2016/12/21.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RotatingUIImagePickerController.h"

@implementation RotatingUIImagePickerController

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
  if(!_supportsLandscape){
    return UIInterfaceOrientationMaskPortrait;
  } else {
    return UIInterfaceOrientationMaskAll;
  }
}
-(id)init {
  self = [super init];
  if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    _supportsLandscape = NO;
  } else {
    _supportsLandscape = YES;
  }
  return self;
}
@end
