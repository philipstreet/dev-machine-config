## Terraform aliases
alias ta='terraform apply'
alias tap='terraform apply tfplan'
alias td='terraform destroy'
alias tf='terraform fmt'
alias tfr='terraform fmt --recursive'
alias ti='terraform init'
alias tinb='terraform init -backend=false'
alias tinbu='terraform init -backend=false --upgrade'
alias tp='terraform plan'
alias tpo='terraform plan -out tfplan'
alias tv='terraform validate'

# apt aliases
alias aul='sudo apt update; sudo apt list --upgradeable'
alias aug='sudo apt upgrade'

# dns aliases
alias dnsh='sudo cp -f /etc/resolv.home /etc/resolv.conf'
alias dnsw='sudo cp -f /etc/resolv.work /etc/resolv.conf'