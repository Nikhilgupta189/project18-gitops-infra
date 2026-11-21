# Project 18: GitOps Infrastructure Deployment

## Objective
Trigger Terraform infrastructure workflows automatically when
a pull request is merged into the main branch.

## Tools
- Terraform
- Git
- GitHub
- GitHub Actions
- GitHub Environments

## Workflow
1. Developer creates a feature branch.
2. Developer modifies Terraform configuration.
3. Developer raises a pull request.
4. Pull request is merged into main.
5. GitHub Actions executes Terraform Plan.
6. Terraform Apply waits for environment approval.
7. Approved Terraform Apply job executes.

## Verification
- Successful Terraform Plan job
- Environment approval
- Successful Terraform Apply job
- Workflow run screenshots

## Limitation
This training demonstration uses terraform_data with temporary
GitHub runner state. It does not create or update AWS resources.
A production deployment requires persistent remote state and
approved cloud authentication.
## Deployment Approval

The GitHub Actions workflow successfully triggers Terraform
Plan and Apply after a pull request is merged.

The production environment was configured, but required
deployment reviewer approval could not be enforced because
the feature was unavailable for this private repository
under the current GitHub plan.

The Terraform apply workflow executed successfully.

