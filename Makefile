
IAC_APP=change_your_app_name
PULUMI=$(HOME)/.pulumi/bin/pulumi
restore:
	# install pulumi
	curl -fsSL https://get.pulumi.com | sh



new_app_aws_iac:
	mkdir $(IAC_APP)
	pulumi new aws-typescript --name $(IAC_APP) --dir $(IAC_APP)

new_app_azure_iac:
	mkdir $(IAC_APP)
	$(PULUMI) new azure-typescript --name $(IAC_APP) --dir $(IAC_APP)

login_local:
	$(PULUMI) login --local