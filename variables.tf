variable "zones" {
	description = "List of zones to configure."
	type        = list
	default     = []
}

variable "nameservers" {
	description = "List of nameservers to configure in the given zones (automatically populated from NS records if not specified)."
	type        = list
	default     = []
}

variable "records" {
	description = "List of records to configure in the given zones."
	type        = any
	default     = []
}

variable "soa_edit_api" {
	description = "SOA-EDIT-API metadata to configure in the given zones."
	type = string
	default = "INCREMENT"
}

variable "api_rectify" {
	description = "Whether to enable API rectification in the given zones."
	type = bool
	default = null
}

variable "dnssec" {
	description = "Whether to enable DNSSEC in the given zones."
	type = bool
	default = null
}

variable "nsec3params" {
	description = "NSEC3 parameters to configure in the given zones."
	type = object(
		{
			optout = number
			additerations = number
		}
	)
	default = null
	#{
	#	optout = 0
	#	additerations = 0
	#}
}
