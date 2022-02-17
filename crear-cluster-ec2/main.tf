provider "aws" {
    region = "value" #Region / DataCenter .
    access_key = "value"
    secret_key = "value"
}

resource "aws_instance" "mi_servidor" { #en la pagina de aws podremos ver lás amis y sus valores .
    ami = "" #valor de la ami (imagen) ej: ami-03101223fasc3c .
    instance_type = "" #tipo de instacia ej: t2.micro .
}


####Comandos Principales de Terraform####
# terraform init   = (Provider) verá el provider definido en nuestro fichero e instalara los plugins
# terraform plan   = (Resumen) va a tomar la configuracion y va a tomar el estado real de la cuenta (si es que tenemos o no recursos creados)
#                  y a partir de eso, nos desplegara una lista con las acciones y recursos que va aplicar.
# terraform apply  = (Despliegue) creara un plan y preguntará si quiere realizar los cambios.
#########################################