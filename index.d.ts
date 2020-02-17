import { NativeModulesStatic } from "react-native"

declare module "react-native" {
	export interface NativeModulesStatic {
		FBAppLink: {
			fetch: () => Promise<string | null>
		}
	}
}
