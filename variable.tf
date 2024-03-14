variable "rgname"{
    type = string
    description = "used for naming resource group"
}

variable "location"{
    type = string
    description = "used for selecting location"
}
variable "adfname"{
    type = string
    description = "used for indicating the adfname"
}
variable "databricks"{
    type = string
    description = "used for indicating the databricks name"
}

variable "storage"{
    type = string
    description = "used for indicating the storage name"
}

variable "appservice"{
    type = string
    description = "used for indicating the appservice name"
}

variable "logicapp"{
    type = string
    description = "used for indicating the logicapp name"
}
