# React-native-fb-applink

This is able to fetch Facebook's deferred deep link for your react-native app

## Getting started

`$ npm install react-native-fb-applink --save`

### Mostly automatic installation

`$ react-native link react-native-fb-applink`

## Usage
```javascript
import FBAppLink  from 'react-native-fb-applink';

export const getDeferredDeepLink = () => {
	return await FBAppLink.fetch()
}
```