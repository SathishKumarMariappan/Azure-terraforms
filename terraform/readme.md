Terraform 

    name it with .tf 

    cmd:: terraform init **

    cmd:: terraform validate 

    cmd:: terraform plan || (validate)

    cmd:: terraform apply ** || (plan((validate))) || --auto-approve

    cmd:: terraform destroy ** || (plan((validate))) || --auto-approve

    terraform state file 


# **.tf
# all in same file || all in one 
# each servise in diff file || service segretion 
# all service related to a feature  || feture segretion 

# keyword nativeServiceName terraformVariable {
#   properties
# }


    April 2024 feature1, feature2 is avaliable || 3.9.0
    June 2024 feturre1 is getting eneded(Warning) , feature2 is avaliable || 3.10.0
    Nov 2024 feturre1 is removed for sequrite reasons (Error) , feature2 is avaliable || 3.11.0





Terraform : open source tool to deploy Infrasture as a code 


Azuere App servise => create a app servise (Manual) || then deployed a code (CI/CD)

Application:
26 servises from azure || (deployment via (CI/CD) a azure service )


multipl azure accounts
    QA || manualy 26 services || teraform script to create 26 services 
    Staging || manualy 26 services || teraform script to create 26 services 
    Production || manualy 26 services || teraform script to create 26 services 
    Sales Demo || manualy 26 services || teraform script to create 26 services 


a || feature 1(10 services) teraform script
b || teraform script
c || teraform script
d || teraform script


terraform : azure, aws, gcp, oracle ... 



1 terraform init || inichate  (only once per session )
2 terraform validate || check if all the script are proper (when ever i make a change )
3 terraform plan || plan find differnce between teraform script and Infrastrue avalible in cloud (create, update, delete) (before deploying the IOC )
4 terraform apply || take the script and perform the changes in cloud infra (to update the coud witth ioc )
5 terraform destroy || remove all services created and maintained by terraform state 


terraform statefile || has the information of terraform current state 


angulr || .net || sql 




create ||  resource is in terra form but not in cloud 
delete || resource in cloud but not in terraform 
modifiy || resource configh in cloud and terraform are not same 





<!-- Module 8 + 9 combined (docker,kuber, terraform and pipeline)
// use terraform to create continer registry and AKS 
// use az repo in az devops to store the code 
// use az devops pipeline to build docker continer from the code inaz repo
// use az devops pipeline to push image to continer registry which was created by terraform 
// use az devops pipeline to deploy image from continer registry which was created by terra to AKS which was created bt terra
// If time permits do the above with ARM insted of Terraform  -->