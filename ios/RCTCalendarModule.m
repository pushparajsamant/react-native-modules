//
//  RCTCalendarModule.m
//  NativeModulesDemo
//
//  Created by Pushparaj Samant on 10/7/2023.
//

#import <Foundation/Foundation.h>
#import "RCTCalendarModule.h"
#import <React/RCTLog.h>
@implementation RCTCalendarModule
// To export a module named RCTCalendarModule
RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)title
                location:(NSString *)location
                  errorCallback: (RCTResponseSenderBlock)errorCallback
                  successCallback: (RCTResponseSenderBlock)successCallback)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", title, location);
  @try {
      NSNumber *eventId = [NSNumber numberWithInt:123];
      successCallback(@[eventId]);
    }
  
    @catch ( NSException *e ) {
      errorCallback(@[e]);
    }
}
@end

