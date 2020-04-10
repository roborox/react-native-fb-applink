import { NativeModules } from "react-native";

interface FBAppLinkModule {
	fetch: () => Promise<string | null>
}

export default NativeModules.FBAppLink as FBAppLinkModule