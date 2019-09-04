# cloud-testapp
Testing GCP

gcloud compute instances create reddit-app-autodeploy\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --zone=europe-north1-a \
  --no-restart-on-failure \
  --metadata startup-script-url=https://raw.githubusercontent.com/Denriful/cloud-testapp/master/deploy.sh
  
  gcloud compute firewall-rules create default-puma-server1\
        --action=allow\
        --description="Allow web access to Ruby Monolith App"\
        --direction=ingress\
        --rules=TCP:9292\
        --source-ranges=0.0.0.0/0\
        --target-tags=puma-server
  
