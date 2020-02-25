declare module '@roborox/react-native-fb-applink' {
	interface FBAppLinkModule {
		fetch: () => Promise<string | null>
	}
	const FbApplink: FBAppLinkModule;
	export default FbApplink
}