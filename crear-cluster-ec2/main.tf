provider "aws" {
    region = "value" #Region / DataCenter .
    access_key = "value"
    secret_key = "value"
}

resource "aws_instance" "mi_servidor" { #en la pagina de aws podremos ver lás amis y sus valores .
    ami = "" #valor de la ami (imagen) ej: ami-03101223fasc3c .
    instance_type = "" #tipo de instacia ej: t2.micro .

    #se utiliza para transmitir datos de usuario a la instancia que se puede utilizar para realizar
    #tareas de configuracion automáticas e incluso ejecutar scripts cuando se inicie la instancia
    user_data = <<-EOF             
                #!/bin/bash         
                echo "¡Desde Terraform!" > index.html
                nohup busybox httpd -f -p 8080 &&
                EOF
}


####Comandos Principales de Terraform####
# terraform init   = (Provider) verá el provider definido en nuestro fichero e instalara los plugins
# terraform plan   = (Resumen) va a tomar la configuracion y va a tomar el estado real de la cuenta (si es que tenemos o no recursos creados)
#                  y a partir de eso, nos desplegara una lista con las acciones y recursos que va aplicar.
# terraform apply  = (Despliegue) creara un plan y preguntará si quiere realizar los cambios.
#########################################

###Informacion que aparece en los resumenes del apply o plan###
# forces replacement = quiere decir que eliminara el recurso y va a crear uno nuevo.
###############################################################