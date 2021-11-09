provider "google" {
        project = "exalted-legacy-330405"
        credentials = "/home/harshitha_csn/terralab/key.json"
        region = "us-central1"
}
resource "google_compute_instance" "myvm" {
        name = "myfirstvm"
        machine_type = "f1-micro"
        zone = "us-central1-a"
        network_interface {
                network = "default"
        }
        boot_disk {
                initialize_params {
                        image = "debian-cloud/debian-10"
        }
        }
}

resource "google_compute_instance" "myvm1" {
        name = "myfirstvm1"
        machine_type = "f1-micro"
        zone = "us-central1-a"
        network_interface {
                network = "default"
        }
        boot_disk {
                initialize_params {
                        image = "debian-cloud/debian-10"
        }
        }
}