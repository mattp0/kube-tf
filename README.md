# kube-tf
This repo is the terraform required to maintain my GKE cluster


## Deployment

Deployment is managed by a remote backend in a google storage bucket. 

New additions should be added to a new branch and a pull request submitted.  

Infracost will provide updated cost adjustment for the newly deployed infrastructure.

GitHub actions will deploy the system using the repo secret GOOGLE_CREDENTIALS

