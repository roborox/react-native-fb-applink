declare module '@roborox/react-native-fb-applink' {
	interface FBAppLinkModule {
		fetch: () => Promise<string | null>
	}
	const module: FBAppLinkModule;
	export default module
}