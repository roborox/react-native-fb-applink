interface FBAppLinkModule {
	fetch: () => Promise<string | null>
}

declare const FbApplink: FBAppLinkModule

export default FbApplink