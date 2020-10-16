package metadata

components: transforms: coercer: {
	title:       "Coercer"
	description: "Accepts log events and allows you to coerce log fields into fixed types."

	classes: {
		commonly_used: false
		development:   "stable"
		egress_method: "stream"
	}

	features: {
		shape: {}
	}

	support: {
		platforms: {
			"aarch64-unknown-linux-gnu":  true
			"aarch64-unknown-linux-musl": true
			"x86_64-apple-darwin":        true
			"x86_64-pc-windows-msv":      true
			"x86_64-unknown-linux-gnu":   true
			"x86_64-unknown-linux-musl":  true
		}

		requirements: []
		warnings: []
		notices: []
	}

	input: {
		logs:    true
		metrics: null
	}

	configuration: {
		drop_unspecified: {
			common:      false
			description: "Set to `true` to drop all fields that are not specified in the `types` table. Make sure both `message` and `timestamp` are specified in the `types` table as their absense will cause the original message data to be dropped along with other extraneous fields."
			required:    false
			warnings: []
			type: bool: default: false
		}
		types: configuration._types
	}
}