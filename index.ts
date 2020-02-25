import { NativeModules } from "react-native";

interface FBAppLinkModule {
	fetch: () => Promise<string | null>
}

const { FbApplink } = NativeModules;

export default FbApplink as FBAppLinkModule
 