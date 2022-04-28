module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.4"

    project_id   = var.project
    network_name = "tomp-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "tomp-subnet"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.region
        }
    ]

    secondary_ranges = {
        subnet-01 = [
            {
                range_name    = "subnet-01-secondary-01"
                ip_cidr_range = "192.168.64.0/24"
            },
        ]

        subnet-02 = []
    }

}
