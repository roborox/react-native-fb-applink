# React-native-fb-applink
***WARNING: IOS ONLY***

This native module can fetch facebook's deferred deep links using FBSDK.

## Getting started

1. Install package `npm install @roborox/react-native-fb-applink -SE`

2. Add `pod "FBSDKCoreKit", "6.2.0"` to your Podfile

3. Perform `pod update` inside ios folder


### Mostly automatic installation

`$ react-native link @roborox/react-native-fb-applink`

## Usage
```javascript
import FBAppLink  from '@roborox/react-native-fb-applink';

async function getDeepLink() {
	try {
		return await NativeModules.FBAppLink.fetch()
	} catch (error) {
		console.error("FBAppLink", error)
		return null
	}
}

```