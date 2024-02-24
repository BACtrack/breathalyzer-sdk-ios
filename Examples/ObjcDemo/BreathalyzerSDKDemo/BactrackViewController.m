//
//  ViewController.m
//  BACtrackBreathalyzerSDKDemo
//
//

#import "BactrackViewController.h"
#import "BACtrack.h"

@interface BactrackViewController() <BacTrackAPIDelegate>
{
  BacTrackAPI * mBacTrack;
  __weak IBOutlet UILabel *breathalyzerStateLabel;
  __weak IBOutlet UILabel *connectionLabel;
}
@end

@implementation BactrackViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  mBacTrack = [[BacTrackAPI alloc] initWithDelegate:self AndAPIKey:@"YOUR API KEY GOES HERE"];
  [mBacTrack startScan];
}

- (IBAction)onTapConnectBreathalyzer:(id)sender {
  [mBacTrack connectToNearestBreathalyzer];
}

- (IBAction)onTapGetBatteryLevel:(id)sender {
  [mBacTrack getBreathalyzerBatteryLevel];
}

- (IBAction)onTapGetSerialNumber:(id)sender {
  [mBacTrack getBreathalyzerSerialNumber];
}

- (IBAction)onTapStartTestCountdown:(id)sender {
  [mBacTrack startCountdown];
}

- (IBAction)onTapDisconnect:(id)sender {
  [mBacTrack disconnect];
}

-(void)BacTrackAPIKeyAuthorized
{
  NSLog(@"BACtrack: API Key Authorized");
}

-(void)BacTrackAPIKeyDeclined:(NSString *)errorMessage
{
  NSLog(@"BACtrack: API Key Declined");
  breathalyzerStateLabel.text = @"API Key Declined";
}


-(void)BacTrackSerial:(NSString *)serial_hex
{
  NSLog(@"BACtrack: Serial Number %@", serial_hex);
  NSString *displayText = [NSString stringWithFormat:@"Serial Number %@", serial_hex];
  breathalyzerStateLabel.text = displayText;
}

-(void)BacTrackUseCount:(NSNumber*)number
{
  NSLog(@"BACtrack: Device Use Count: %d", number.intValue);
}


-(void)BacTrackError:(NSError*)error
{
  NSLog(@"BACtrack: Error %@", error.localizedDescription);
}

-(void)BacTrackCountdown:(NSNumber *)seconds executionFailure:(BOOL)failure
{
  NSLog(@"BACtrack: Countdown: %d", seconds.intValue);
  NSString *displayText = [NSString stringWithFormat:@"Warming up: %@", seconds.stringValue];
  breathalyzerStateLabel.text = displayText;

}

-(void)BacTrackResults:(CGFloat)bac
{
  NSLog(@"BACtrack: BacTrackResults result %f", bac);
  NSString *bacText = [[NSNumber numberWithFloat:bac] stringValue];
  NSString *displayText = [NSString stringWithFormat:@"BAC result: %@", bacText];
  breathalyzerStateLabel.text = displayText;
}

-(void)BacTrackConnected:(BACtrackDeviceType)device
{
  NSString *displayText = @"";
  if (device == BACtrackDeviceType_Mobile ) {
    NSLog(@"BACtrack: Connected to device: bactrack-mobile");
    displayText = @"Connected to device: bactrack-mobile";
  } else if (device == BACtrackDeviceType_MobileV2 ) {
    NSLog(@"BACtrack: Connected to device: bactrack-mobile-v2");
    displayText = @"Connected to device: bactrack-mobile-v2";
  } else if(device == BACtrackDeviceType_C6){
    NSLog(@"BACtrack: Connected to device: bactrack-c6");
    displayText = @"Connected to device: bactrack-c6";
  } else if(device == BACtrackDeviceType_C8){
    NSLog(@"BACtrack: Connected to device: bactrack-c8");
    displayText = @"Connected to device: bactrack-c8";
  } else {
    NSLog(@"BACtrack: Connected to device: unknown :%d", (int)device);
    displayText = @"Connected to device: unknown";
  }
  connectionLabel.text = displayText;
  breathalyzerStateLabel.text = @"Breathalyzer ready to start test";

}

-(void)BacTrackDisconnected
{
  NSLog(@"BACtrack: Disconnected");
  connectionLabel.text = @"Breathalyzer Disconnected";
  breathalyzerStateLabel.text = @"";
}

-(void)BacTrackConnectTimeout
{
  NSLog(@"BACtrack: Connection Timeout");
}

-(void)BacTrackFoundBreathalyzer:(Breathalyzer*)breathalyzer
{
  NSLog(@"BACtrack: FoundBreathalyzer: %@", breathalyzer.peripheral.name.description);
  connectionLabel.text = @"Device found nearby";
  breathalyzerStateLabel.text = @"Tap Connect Breathalyzer";
}

- (void) BacTrackBatteryVoltage:(NSNumber *)number
{
  NSLog(@"BACtrack: Battery Voltage: %@", number.stringValue);

}

- (void) BacTrackBatteryLevel:(NSNumber *)number
{
  NSLog(@"BACtrack: Battery Level: %@",  number.stringValue);
  NSString *displayText = [NSString stringWithFormat:@"Battery Level %@", number.stringValue];
  breathalyzerStateLabel.text = displayText;
}


- (void) BacTrackStart {
  NSLog(@"BACtrack: Start");
  breathalyzerStateLabel.text = @"Start blowing";
}


- (void)BacTrackBlow:(NSNumber*)breathFractionRemaining {
  NSLog(@"BACtrack: BacTrackBlow breath fraction remaining %@", breathFractionRemaining.stringValue);
  NSString *displayText = [NSString stringWithFormat:@"Keep blowing: %@", breathFractionRemaining.stringValue];
  breathalyzerStateLabel.text = displayText;
}


- (void) BacTrackAnalyzing {
    NSLog(@"BACtrack: Analyzing results");
  breathalyzerStateLabel.text = @"Analyzing results";
}


@end
